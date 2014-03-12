//
//  main.m
//  Notice
//
//  Created by el1ven on 14-3-12.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
#import "Mother.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Child *child = [[Child alloc]init];
        Mother *mother = [[Mother alloc]init];
        [[NSRunLoop currentRunLoop]run];//让定时器跑起来
        
        
        
    }
    return 0;
}

