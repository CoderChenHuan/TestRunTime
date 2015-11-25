//
//  UIImage+Extension.m
//  TestRunTime
//
//  Created by ChenHuan on 15/11/23.
//  Copyright © 2015年 ChenHuan. All rights reserved.
//

#import "UIImage+Extension.h"
#import <objc/runtime.h>

@implementation UIImage (Extension)

+ (void)load {
    Method imageNamed = class_getClassMethod([UIImage class], @selector(imageNamed:));
    Method ch_imageNamed = class_getClassMethod([UIImage class], @selector(ch_imageNamed:));
    method_exchangeImplementations(imageNamed, ch_imageNamed);
}

+ (UIImage *)ch_imageNamed:(NSString *)name {
    NSUInteger nameNum = arc4random_uniform(4);
    return [self ch_imageNamed:@(nameNum).stringValue];
}


@end

