//
//  DestinationViewController.m
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "DestinationViewController.h"

@interface DestinationViewController ()

@end

@implementation DestinationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)backAction:(id)sender
{
    NSLog(@"destination view controller back action");
    [self.delegate destinationViewControllerDidDismissed:self];
}

- (void)dealloc
{
    NSLog(@"dealloc %@", self);
}


@end
