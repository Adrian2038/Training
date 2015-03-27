//
//  MyStoryboardSegue.m
//  SegueDemo
//
//  Created by Zhu Dengquan on 15/3/27.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "MyStoryboardSegue.h"

@implementation MyStoryboardSegue

- (void)perform
{
    UIViewController *sourceViewController = self.sourceViewController;
    UIViewController *destinationViewController = self.destinationViewController;
    
    UIGraphicsBeginImageContext(destinationViewController.view.bounds.size);
    [destinationViewController.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *destinationViewControllerImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *destinationViewControllerImageView = [[UIImageView alloc] initWithImage:destinationViewControllerImage];
    [sourceViewController.parentViewController.view addSubview:destinationViewControllerImageView];
    
    CGAffineTransform scaleTranform = CGAffineTransformMakeScale(0.1, 0.1);
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(M_PI);
    destinationViewControllerImageView.transform = CGAffineTransformConcat(scaleTranform, rotateTransform);
    
    CGPoint latterCenter = destinationViewControllerImageView.center;
    CGPoint formerCenter = CGPointMake(latterCenter.x - destinationViewControllerImageView.frame.size.width, latterCenter.y);
    destinationViewControllerImageView.center = formerCenter;
    
    [UIView animateWithDuration:0.5
                     animations:^(void)
                     {
                         destinationViewControllerImageView.transform = CGAffineTransformIdentity;
                         destinationViewControllerImageView.center = latterCenter;
                     }
                     completion:^(BOOL finished)
                     {
                         [destinationViewControllerImageView removeFromSuperview];
                         [sourceViewController presentViewController:destinationViewController
                                                            animated:NO
                                                          completion:nil];
                         
                     }];
}

@end
