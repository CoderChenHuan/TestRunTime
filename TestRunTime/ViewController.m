//
//  ViewController.m
//  TestRunTime
//
//  Created by ChenHuan on 15/11/23.
//  Copyright © 2015年 ChenHuan. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ViewController *viewController;
    NSMutableArray *array = [[NSMutableArray alloc] init];
//    [array addObject:viewCont/roller];
//    [array addObject:@"1"];
    
    [array insertObject:viewController atIndex:0];
    
    UIImage *image = [UIImage imageNamed:@"1"];
    
    
    self.imageView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
    
}

@end
