//
//  AvatarRingView.h
//  ZDQAvatar
//
//  Created by Zhu Dengquan on 15/4/2.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvatarRingView : UIView

- (void)setImage:(UIImage *)image;
- (void)setColorPercentageItems:(NSArray *)items;

@end


@interface ColorPercentageItem : NSObject

@property (nonatomic, assign) CGFloat percentage;
@property (nonatomic, strong) UIColor *color;

+ (ColorPercentageItem *)itemWithPercentage:(CGFloat)percentage color:(UIColor *)color;

@end
