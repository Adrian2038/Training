//
//  ViewModel.h
//  MVVM
//
//  Created by Zhu Dengquan on 15/4/15.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@interface ViewModel : NSObject

- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthDateText;

@end
