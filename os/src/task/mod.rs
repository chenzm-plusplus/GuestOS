mod context;
mod switch;
mod task;
mod stride;

use crate::config::MAX_APP_NUM;
use crate::config::APP_BASE_ADDRESS;
use crate::config::APP_SIZE_LIMIT;
use crate::loader::{get_num_app, init_app_cx, get_user_stack_space};
use core::cell::RefCell;
use lazy_static::*;
use switch::__switch;
use task::{TaskControlBlock, TaskStatus, TaskPriority};

pub use context::TaskContext;

pub struct TaskManager {
    num_app: usize,
    inner: RefCell<TaskManagerInner>,
}

struct TaskManagerInner {
    tasks: [TaskControlBlock; MAX_APP_NUM],
    current_task: usize,
}

unsafe impl Sync for TaskManager {}

lazy_static! {
    pub static ref TASK_MANAGER: TaskManager = {
        debug!("TASK_MANAGERL::init");
        let num_app = get_num_app();
        debug!("num_app is {}",num_app);
        let mut tasks = [
            TaskControlBlock { task_cx_ptr: 0, task_status: TaskStatus::UnInit, task_priority: TaskPriority::new()};
            MAX_APP_NUM
        ];
        for i in 0..num_app {
            debug!("i...{}",i);
            tasks[i].task_cx_ptr = init_app_cx(i) as * const _ as usize;
            tasks[i].task_status = TaskStatus::Ready;
        }
        TaskManager {
            num_app,
            inner: RefCell::new(TaskManagerInner {
                tasks,
                current_task: 0,
            }),
        }
    };
}

impl TaskManager {
    fn run_first_task(&self) {
        self.inner.borrow_mut().tasks[0].task_status = TaskStatus::Running;
        let next_task_cx_ptr2 = self.inner.borrow().tasks[0].get_task_cx_ptr2();
        let _unused: usize = 0;
        unsafe {
            __switch(
                &_unused as *const _,
                next_task_cx_ptr2,
            );
        }
    }

    fn mark_current_suspended(&self) {
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].task_status = TaskStatus::Ready;
    }

    fn mark_current_exited(&self) {
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].task_status = TaskStatus::Exited;
    }

    fn find_next_task(&self) -> Option<usize> {
        let inner = self.inner.borrow();
        let current = inner.current_task;
        //就是在这里要加入调度算法！哪个进程是下一个要运行的进程呢？下面一句返回的就是它
        (current + 1..current + self.num_app + 1)
            .map(|id| id % self.num_app)
            .find(|id| {
                inner.tasks[*id].task_status == TaskStatus::Ready
            })
    }

    ///!!!
    fn find_next_task_stride(&self) -> Option<usize> {
        let inner = self.inner.borrow();
        let current = inner.current_task;
        //修改调度算法，返回不同的值
        /*
        为每个进程设置一个当前 stride，表示该进程当前已经运行的“长度”。
        另外设置其对应的 pass 值（只与进程的优先权有关系），表示对应进程在调度后，stride 需要进行的累加值。
        每次需要调度时，从当前 runnable 态的进程中选择 stride 最小的进程调度。对于获得调度的进程 P，将对应的 stride 加上其对应的步长 pass。
        一个时间片后，回到上一步骤，重新调度当前 stride 最小的进程。
        */
        //获得下一个替换的进程
        //在状态为ready的进程当中，寻找sstride最小的进行进行调度
        (current + 1..current + self.num_app + 1)
            .map(|id| id % self.num_app)
            .find(|id| {
                inner.tasks[*id].task_status == TaskStatus::Ready
            })
    }

    fn run_next_task(&self) {
        if let Some(next) = self.find_next_task_stride() {
            let mut inner = self.inner.borrow_mut();
            let current = inner.current_task;
            inner.tasks[next].task_status = TaskStatus::Running;
            inner.current_task = next;
            let current_task_cx_ptr2 = inner.tasks[current].get_task_cx_ptr2();
            let next_task_cx_ptr2 = inner.tasks[next].get_task_cx_ptr2();
            core::mem::drop(inner);
            unsafe {
                __switch(
                    current_task_cx_ptr2,
                    next_task_cx_ptr2,
                );
            }
        } else {
            panic!("All applications completed!");
        }
    }

    fn get_num_app_current(&self) -> usize{
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        current
    }

    fn get_app_address_space_current(&self) -> (usize,usize){
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        (APP_BASE_ADDRESS + APP_SIZE_LIMIT*current,APP_BASE_ADDRESS + APP_SIZE_LIMIT*(current+1))
    }

    fn get_task_priority_current(&self) -> usize{
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].get_priority()
    }

    fn set_task_priority(&self, prio:usize){
        let mut inner = self.inner.borrow_mut();
        let current = inner.current_task;
        inner.tasks[current].set_priority(prio);
    }
}

pub fn run_first_task() {
    TASK_MANAGER.run_first_task();
}

fn run_next_task() {
    TASK_MANAGER.run_next_task();
}

fn mark_current_suspended() {
    TASK_MANAGER.mark_current_suspended();
}

fn mark_current_exited() {
    TASK_MANAGER.mark_current_exited();
}

pub fn suspend_current_and_run_next() {
    mark_current_suspended();
    run_next_task();
}

pub fn exit_current_and_run_next() {
    mark_current_exited();
    run_next_task();
}

//for sys_write check
pub fn get_num_app_current()->usize{
    TASK_MANAGER.get_num_app_current()
}

pub fn get_user_stack_space_current()->(usize,usize){
    get_user_stack_space(TASK_MANAGER.get_num_app_current())
}

pub fn get_app_address_space_current()-> (usize,usize){
    TASK_MANAGER.get_app_address_space_current()
}

pub fn get_task_priority_current() -> usize{
    TASK_MANAGER.get_task_priority_current()
}

pub fn set_task_priority(prio:usize){
    TASK_MANAGER.set_task_priority(prio);
}