//
//  ModelViewController.h
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ModelViewController;

@protocol ModelViewControllerDelegate <NSObject>

- (void)modelViewControllerDidDismissed:(ModelViewController *)controller;

@end

@interface ModelViewController : UIViewController

@property (nonatomic, weak) id <ModelViewControllerDelegate> delegate;

- (IBAction)backAction:(UIBarButtonItem *)sender;

@end
