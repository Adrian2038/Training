//
//  SourceViewController.m
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "SourceViewController.h"
#import "DestinationViewController.h"

@interface SourceViewController () <DestinationViewControllerDelegate>

@end

@implementation SourceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Custom"]) {
        if ([segue.destinationViewController isKindOfClass:[DestinationViewController class]]) {
            DestinationViewController *destinationViewController = (DestinationViewController *)segue.destinationViewController;
            destinationViewController.delegate = self;
            NSLog(@"destination view controller' s delelgate is %@", self);
        }
    }
}

#pragma mark - DestinationViewController

- (void)destinationViewControllerDidDismissed:(DestinationViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
