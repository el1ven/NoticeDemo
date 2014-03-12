//
//  Mother.m
//  Notice
//
//  Created by el1ven on 14-3-12.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "Mother.h"

@implementation Mother
-(id)init{ //重写初始化函数来设置监听通知
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(wakeNotice:) name:@"wakeUp" object:nil];//wakeUp为要监听的通知，wakeNotice表示监听到通知所要进行处理的函数
        
    }
    return self;
}

-(void) wakeNotice: (NSNotification *)notification {//监听到孩子醒了的通知要出发什么处理事件
    
    NSLog(@"孩子醒了,抱起孩子哄哄!");
    NSNumber *nowSleep = notification.object;//获取由通知传过来的参数，孩子的sleep值
    NSLog(@"当前的sheep值为:%@",nowSleep);
    
}
@end
