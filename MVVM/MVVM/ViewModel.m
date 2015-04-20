//
//  ViewModel.m
//  MVVM
//
//  Created by Zhu Dengquan on 15/4/15.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

- (instancetype)initWithPerson:(Person *)person
{
  self = [super init];
  if (self) {
    if (person.salutation.length > 0) {
      _nameText = [NSString stringWithFormat:@"%@ %@ %@", person.salutation, person.firstName, person.lastName];
    } else {
      _nameText = [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName];
    }
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE MMMM d, yyyy"];
    _birthDateText = [formatter stringFromDate:person.date];
  }
  return self;
}

@end
