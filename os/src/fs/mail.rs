//根据测例可以知道，事实上mail要做的事情就是从缓冲区读写，然后存到进程的mail缓冲里面
//为了实现进程之间通信，还是离不开用户程序自己的控制呀
use alloc::collections::VecDeque;
use super::File;
use alloc::sync::{Arc, Weak};
use spin::Mutex;
use crate::mm::{
    UserBuffer,
};
use crate::task::suspend_current_and_run_next;

//还是需要用到Mail的

// //把邮箱里面的内容写到缓冲区
// pub fn sys_mail_read(buf: *mut u8, len: usize)->isize{
//     -1 as isize

// }
// 比如说这个read函数，真正实现的时候可以：
// 1. 试图分配一个


// //把缓冲区里面的内容写进进程pid的邮箱
// 可以先试着实现一个往本进程的邮箱里面写的
// pub fn sys_mail_write(pid: usize, buf: *mut u8, len: usize)->isize{
//     -1 as isize
// }

pub struct Mail{
    fd_read: usize,
    fd_write: usize,
};

impl Mail{
    pub fn new(read_end:usize,write_end:usize)->Self{
        Self{
            read_end,
            write_end,
        }
    }
}

const MAIL_NUMBER_LIMIT:usize = 16;

#[derive(Copy, Clone, PartialEq)]
enum MailBoxStatus {
    FULL,
    EMPTY,
    NORMAL,
}

pub struct MailBox{
    mails: VecDeque<Mail>,
    limit: usize,
    status: MailBoxStatus,
};

impl MailBox{
    pub fn new() ->Self{
        Self{
            mails:Vec::new(),//初始化为空
            limit: MAIL_NUMBER_LIMIT,
            status: MailBoxStatus::EMPTY,
        }
    }
    pub fn add_mail(&mut self,mail:Mail)->usize{
        if self.status==MailBoxStatus::FULL{
            return 0;
        }
        self.mails.push_back(mail);
        if self.mails.len()>=self.limit{
            self.status=MailBoxStatus::FULL;
        }
        self.mails.len()
    }
    //VecDeque自己就会返回一个Option类型，所以这里函数的返回值使用Option类就可以类
    pub fn get_mail(&mut self)->Option<Mail>{
        let m = self.mails.pop_front();
        if self.mails.len() == 0{
            self.status=MailBoxStatus::EMPTY;
        }
        m
    }
}