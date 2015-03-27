//
//  PushAndModelViewController.m
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "PushAndModelViewController.h"
#import "ModelViewController.h"

@interface PushAndModelViewController () <ModelViewControllerDelegate>

@end

@implementation PushAndModelViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Model"]) {
        if ([segue.destinationViewController isKindOfClass:[ModelViewController class]]) {
            ModelViewController *modelViewController = (ModelViewController *)segue.destinationViewController;
            modelViewController.delegate = self;
        }
    }
}

#pragma mark - ModelViewControllerDelegate

- (void)modelViewControllerDidDismissed:(ModelViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
