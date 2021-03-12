mod context;
mod switch;
mod task;
mod manager;
mod processor;
mod pid;
mod stride;
mod priority;

use crate::loader::{get_app_data_by_name};
use switch::__switch;
use task::{TaskControlBlock, TaskStatus};
use alloc::sync::Arc;
use lazy_static::*;

//=====================================================================
// 本文件中是要向其他模块提供的代码
//=====================================================================

pub use context::TaskContext;
pub use processor::{
    run_tasks,
    current_task,
    current_user_token,
    current_trap_cx,
    take_current_task,
    schedule,

    set_priority,
    mmap,
    munmap,
};
pub use manager::{
    add_task,
    fetch_task,
};
pub use pid::{PidHandle, pid_alloc, KernelStack};

pub use priority::{
    TaskPriority,
};

//=====================================================================
// 以下部分的代码都和进程调度相关
//=====================================================================
pub fn suspend_current_and_run_next() {
    // There must be an application running.
    let task = take_current_task().unwrap();

    // ---- hold current PCB lock
    let mut task_inner = task.acquire_inner_lock();
    let task_cx_ptr2 = task_inner.get_task_cx_ptr2();
    // Change status to Ready
    task_inner.task_status = TaskStatus::Ready;
    drop(task_inner);
    // ---- release current PCB lock

    // push back to ready queue.
    add_task(task);
    // jump to scheduling cycle
    schedule(task_cx_ptr2);
}

pub fn exit_current_and_run_next(exit_code: i32) {
    // take from Processor
    let task = take_current_task().unwrap();
    // **** hold current PCB lock
    let mut inner = task.acquire_inner_lock();
    // Change status to Zombie
    inner.task_status = TaskStatus::Zombie;
    // Record exit code
    inner.exit_code = exit_code;
    // do not move to its parent but under initproc

    // ++++++ hold initproc PCB lock here
    {
        let mut initproc_inner = INITPROC.acquire_inner_lock();
        for child in inner.children.iter() {
            child.acquire_inner_lock().parent = Some(Arc::downgrade(&INITPROC));
            initproc_inner.children.push(child.clone());
        }
    }
    // ++++++ release parent PCB lock here

    inner.children.clear();
    // deallocate user space
    inner.memory_set.recycle_data_pages();
    drop(inner);
    // **** release current PCB lock
    // drop task manually to maintain rc correctly
    drop(task);
    // we do not have to save task context
    let _unused: usize = 0;
    schedule(&_unused as *const _);
}

lazy_static! {
    pub static ref INITPROC: Arc<TaskControlBlock> = Arc::new(
        TaskControlBlock::new(get_app_data_by_name("initproc").unwrap())
    );
}

pub fn add_initproc() {
    add_task(INITPROC.clone());
}

//=====================================================================
// 以下部分的代码是为了实现系统调用。目前支持的和进程相关的系统调用，有：
// SYSCALL_SET_PRIORITY => sys_set_priority(args[0]),
// SYSCALL_MMAP => sys_mmap(args[0],args[1],args[2]),
// SYSCALL_MUNMAP => sys_munmap(args[0],args[1]),
//=====================================================================



// pub fn get_my_num_app()->usize{
//     TASK_MANAGER.get_num_app()
// }

// // //for sys_write check
// pub fn get_task_current()->usize{
//     TASK_MANAGER.get_task_current()
// }

// pub fn get_task_priority(task:usize)->usize{
//     TASK_MANAGER.get_task_priority(task)
// }

// // pub fn get_current_memoryset()->&'static mut MemorySet{
// //     TASK_MANAGER.lock().get_current_memoryset()
// // }

// pub fn mmap(start: usize, len: usize, port: usize) -> isize{
//     TASK_MANAGER.mmap(start, len, port)
// }

// pub fn munmap(start: usize, len: usize) -> isize{
//     TASK_MANAGER.munmap(start, len)
// }

// // pub fn mmap(start: usize, len: usize, port: usize) -> isize{
// //     // TASK_MANAGER.mmap(start, len, port)
// //     TASK_MANAGER.get_current_memoryset().mmap(start,len,port)
// // }

// // pub fn munmap(start: usize, len: usize) -> isize{
// //     TASK_MANAGER.get_current_memoryset().munmap(start, len)
// // }
