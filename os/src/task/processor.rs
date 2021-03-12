use super::TaskControlBlock;
use alloc::sync::Arc;
use core::cell::RefCell;
use lazy_static::*;
use super::{
    fetch_task, 
    TaskStatus,
    TaskPriority,
};
use super::__switch;
use crate::trap::TrapContext;

pub struct Processor {
    inner: RefCell<ProcessorInner>,
}

unsafe impl Sync for Processor {}

struct ProcessorInner {
    current: Option<Arc<TaskControlBlock>>,
    idle_task_cx_ptr: usize,
}

impl Processor {
    pub fn new() -> Self {
        Self {
            inner: RefCell::new(ProcessorInner {
                current: None,
                idle_task_cx_ptr: 0,
            }),
        }
    }
    fn get_idle_task_cx_ptr2(&self) -> *const usize {
        let inner = self.inner.borrow();
        &inner.idle_task_cx_ptr as *const usize
    }
    pub fn run(&self) {
        loop {
            if let Some(task) = fetch_task() {
                let idle_task_cx_ptr2 = self.get_idle_task_cx_ptr2();
                // acquire
                let mut task_inner = task.acquire_inner_lock();
                let next_task_cx_ptr2 = task_inner.get_task_cx_ptr2();
                task_inner.task_status = TaskStatus::Running;
                drop(task_inner);
                // release
                // 先把各种变量变了，然后current修改，然后进入switch函数里面
                self.inner.borrow_mut().current = Some(task);//可以认为是转移了所有权
                unsafe {
                    __switch(
                        idle_task_cx_ptr2,
                        next_task_cx_ptr2,
                    );
                }
            }
        }
    }
    //问题：为什么需要把当前任务“取出来”？
    pub fn take_current(&self) -> Option<Arc<TaskControlBlock>> {
        self.inner.borrow_mut().current.take()
    }
    //这个函数会把task复制一份，所以并不像上面那个函数一样直接所有权都变了
    pub fn current(&self) -> Option<Arc<TaskControlBlock>> {
        self.inner.borrow().current.as_ref().map(|task| Arc::clone(task))
    }

    //修改进程的priority属性
    pub fn set_priority(&self, prio:TaskPriority){
        self.inner.borrow_mut().current.as_ref().unwrap().set_priority(prio);
    }
}

lazy_static! {
    pub static ref PROCESSOR: Processor = Processor::new();
}

pub fn run_tasks() {
    PROCESSOR.run();
}

pub fn take_current_task() -> Option<Arc<TaskControlBlock>> {
    PROCESSOR.take_current()
}

pub fn current_task() -> Option<Arc<TaskControlBlock>> {
    PROCESSOR.current()
}

pub fn current_user_token() -> usize {
    let task = current_task().unwrap();
    let token = task.acquire_inner_lock().get_user_token();
    token
}

pub fn set_priority(prio:TaskPriority){
    // let task = current_task().unwrap();
    // let token = task.acquire_inner_lock().set_task_priority(prio);
    PROCESSOR.set_priority(prio);
}

pub fn current_trap_cx() -> &'static mut TrapContext {
    current_task().unwrap().acquire_inner_lock().get_trap_cx()
}

pub fn schedule(switched_task_cx_ptr2: *const usize) {
    let idle_task_cx_ptr2 = PROCESSOR.get_idle_task_cx_ptr2();
    unsafe {
        __switch(
            switched_task_cx_ptr2,
            idle_task_cx_ptr2,
        );
    }
}
