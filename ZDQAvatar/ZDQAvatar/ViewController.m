//
//  ViewController.m
//  ZDQAvatar
//
//  Created by Zhu Dengquan on 15/4/2.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "ViewController.h"
#import "ZDQAvatarRingView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.view.backgroundColor = [UIColor whiteColor];
  
  CGRect avatarFrame = CGRectMake(self.view.center.x - 50, self.view.center.y - 50, 100, 100);
  UIImage *image = [UIImage imageNamed:@"9.jpg"];
  NSArray *items = @[[ColorPercentageItem itemWithPercentage:0.1 color:[UIColor purpleColor]],
                     [ColorPercentageItem itemWithPercentage:0.3 color:[UIColor redColor]],
                     [ColorPercentageItem itemWithPercentage:0.1 color:[UIColor purpleColor]],
                     [ColorPercentageItem itemWithPercentage:0.5 color:[UIColor redColor]]];
  
  ZDQAvatarRingView *avatar = [[ZDQAvatarRingView alloc] initWithFrame:avatarFrame];
  [avatar setImage:image];
  [avatar setColorPercentageItems:items];
  
  [self.view addSubview:avatar];
}

@end
