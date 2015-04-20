//
//  Person.h
//  MVVM
//
//  Created by Zhu Dengquan on 15/4/15.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (instancetype)initWithSalutation:(NSString *)salutation
                         firstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                         birthDate:(NSDate *)date;

@property (nonatomic, readonly) NSString *salutation;
@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate *date;

@end
