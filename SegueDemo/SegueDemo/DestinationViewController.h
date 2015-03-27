//
//  DestinationViewController.h
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DestinationViewController;

@protocol DestinationViewControllerDelegate <NSObject>

- (void)destinationViewControllerDidDismissed:(DestinationViewController *)controller;

@end

@interface DestinationViewController : UIViewController

@property (nonatomic, weak) id <DestinationViewControllerDelegate> delegate;

- (IBAction)backAction:(id)sender;

@end
