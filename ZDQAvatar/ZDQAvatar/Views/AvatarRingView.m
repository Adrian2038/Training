//
//  AvatarRingView.m
//  ZDQAvatar
//
//  Created by Zhu Dengquan on 15/4/2.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#define kHeight self.frame.size.height
#define kWidth  self.frame.size.width

#define kStrokeWidth 4
#define kCleanAreaWidth 3
#define ImageOffset  (kStrokeWidth + kCleanAreaWidth)

#define kDegreeOfRadius(degrees)  ((M_PI * degrees)/ 180)       // Double M_PI is a circle

#import "AvatarRingView.h"

@interface AvatarRingView ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *mImage;

@property (nonatomic, strong) NSArray *items;

@property (nonatomic, assign) BOOL useStrokeColor;

@end


@implementation AvatarRingView

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  
  if (self) {
    self.backgroundColor = [UIColor clearColor];
  }

  return self;
}

- (void)setImage:(UIImage *)image
{
  self.mImage = image;
  
  [self setNeedsDisplay];
}

- (void)setColorPercentageItems:(NSArray *)items
{
  if (items) {
    self.useStrokeColor = YES;
  }
  self.items = items;
  
  CGFloat percentageCount = 0.0;
  for (ColorPercentageItem *item in items) {
    percentageCount += item.percentage;
  }
  if (percentageCount != 1.0) {
    NSLog(@"Warning: sum of the percentageCount must equal 1");
  }
  
  [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  self.layer.masksToBounds = YES;
  self.layer.cornerRadius = self.frame.size.height/2;
  
  [self setInsideImage:self.mImage];
  [self strokeColorPercentageWithItems:self.items];
}

- (void)setInsideImage:(UIImage *)image
{
  CGRect ivFrame;
  if (self.useStrokeColor) {
    ivFrame = CGRectMake(ImageOffset, ImageOffset, kWidth - ImageOffset * 2, kHeight - ImageOffset * 2);
  }
  else {
    ivFrame = self.bounds;
  }
  
  [self.imageView setFrame:ivFrame];
  [self.imageView setImage:image];
  
  self.imageView.layer.masksToBounds = YES;
  self.imageView.layer.cornerRadius = ivFrame.size.width / 2.0;
}

- (void)strokeColorPercentageWithItems:(NSArray *)items
{
  if (self.useStrokeColor) {
    CGFloat startPoint = 0.0;
    CGFloat endPoint = 0.0;
    
    for (NSInteger i = 0; i < items.count; i++) {
      ColorPercentageItem *item = items[i];
      
      UIColor *color = item.color;
      [color set];
      CGFloat percentage = item.percentage;
      
      startPoint = endPoint;
      endPoint = kDegreeOfRadius(360 * percentage) + startPoint;
      
      UIBezierPath *aPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(kWidth / 2.0, kHeight / 2.0)
                                                           radius:kWidth / 2.0
                                                       startAngle:startPoint
                                                         endAngle:endPoint
                                                        clockwise:YES];
      aPath.lineWidth = 5.0;
      aPath.lineCapStyle = kCGLineCapRound;
      aPath.lineJoinStyle = kCGLineCapRound;
      
      [aPath stroke];
    }
  }
}

#pragma mark -
#pragma mark - Properties

// Be careful with images and sounds, they can consume a lot of memory.
- (UIImageView *)imageView
{
  if (!_imageView) {
    _imageView = [[UIImageView alloc] init];
    
    [self addSubview:_imageView];
  }
  return _imageView;
}

@end


#pragma mark -
#pragma mark - ColorPercentageItem

@implementation ColorPercentageItem : NSObject

+ (ColorPercentageItem *)itemWithPercentage:(CGFloat)percentage color:(UIColor *)color
{
  ColorPercentageItem *item = [[ColorPercentageItem alloc] init];
  item.percentage = percentage;
  item.color = color;
  
  return item;
}

@end
