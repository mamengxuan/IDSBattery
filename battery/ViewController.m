//
//  ViewController.m
//  battery
//
//  Created by 马孟轩 on 2016/12/22.
//  Copyright © 2016年 马孟轩. All rights reserved.
//

#import "ViewController.h"
#import "IDSbatteryClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    NSUInteger k = 100;

    IDSbatteryClass *i = [IDSbatteryClass batteryWithCurrentNum:k receive:YES];
    i.frame = CGRectMake(0, 0, 30, 15);
    i.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    [self.view addSubview:i];
    
    
//    [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//       
//        i.currentNum --;
//    }];
//
//    i.receive = NO;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
