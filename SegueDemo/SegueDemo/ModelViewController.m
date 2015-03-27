//
//  ModelViewController.m
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "ModelViewController.h"

@interface ModelViewController ()

@end

@implementation ModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)backAction:(UIBarButtonItem *)sender
{
    [self.delegate modelViewControllerDidDismissed:self];
}

- (void)dealloc
{
    NSLog(@"dealloc %@", self);
}

@end
