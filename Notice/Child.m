//
//  Child.m
//  Notice
//
//  Created by el1ven on 14-3-12.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "Child.h"

@implementation Child

-(id)init{ //重写初始化方法，设定sleep初始值，和NSTimer
    self = [super init];
    if(self){
        self.sleep = 100;
        [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeAction:) userInfo:nil repeats:YES];//timeAction后面的冒号表示可以加参数
    }
    return self;
}

-(void)timeAction:(NSTimer*)timer{
    self.sleep -= 2;
    NSLog(@"孩子的sleep值:%ld",self.sleep);
    if(self.sleep < 90 ){
        [[NSNotificationCenter defaultCenter] postNotificationName:@"wakeUp" object:[NSNumber numberWithInteger:self.sleep]]; //当sleep值小于90的时候发送通知，wakeUp表示孩子醒来的函数，object可以传值到监听通知的地方
        [timer invalidate];//让定时器停下来
    }
}

@end
