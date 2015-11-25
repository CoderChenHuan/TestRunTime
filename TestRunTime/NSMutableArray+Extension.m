//
//  NSMutableArray+Extension.m
//  TestRunTime
//
//  Created by ChenHuan on 15/11/23.
//  Copyright © 2015年 ChenHuan. All rights reserved.
//

#import "NSMutableArray+Extension.h"
#import <objc/runtime.h>

@implementation NSMutableArray (Extension)

+ (void)load {
    Method addObjectMethod = class_getInstanceMethod([NSMutableArray class], @selector(addObject:));
    Method ch_addObjectMethod = class_getInstanceMethod([NSMutableArray class], @selector(ch_addObject:));
    method_exchangeImplementations(addObjectMethod, ch_addObjectMethod);
    
    Method insertObject = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(insertObject:atIndex:));
    Method ch_insertObject = class_getInstanceMethod([NSMutableArray class], @selector(ch_insertObject:atIndex:));
    method_exchangeImplementations(insertObject, ch_insertObject);
}

- (void)ch_addObject:(id)obj {
    NSLog(@"%s",__func__);
    if (obj) {
        [self ch_addObject:obj];
    }
}

- (void)ch_insertObject:(id)anObject atIndex:(NSUInteger)index {
    NSLog(@"%s",__func__);
    if (anObject) {
        [self ch_insertObject:anObject atIndex:index];
    }
}

@end
