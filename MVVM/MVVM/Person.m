//
//  Person.m
//  MVVM
//
//  Created by Zhu Dengquan on 15/4/15.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithSalutation:(NSString *)salutation
                         firstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                         birthDate:(NSDate *)date
{
  self = [super init];
  if (self) {
    _salutation = salutation;
    _firstName = firstName;
    _lastName = lastName;
    _date = date;
  }
  return self;
}

@end
