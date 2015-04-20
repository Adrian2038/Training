//
//  ViewController.m
//  MVVM
//
//  Created by Zhu Dengquan on 15/4/15.
//  Copyright (c) 2015年 Zhu Dengquan. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *hiLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (nonatomic, strong) ViewModel *personViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  self.hiLabel.text = self.personViewModel.nameText;
  self.dateLabel.text = self.personViewModel.birthDateText;
  
}

#pragma mark - Property

- (ViewModel *)personViewModel
{
  if (!_personViewModel) {
    Person *person = [[Person alloc] initWithSalutation:@"Hi"
                                              firstName:@"Zhu"
                                               lastName:@"Dengqaun"
                                              birthDate:[NSDate  dateWithTimeIntervalSinceNow:0]];
    _personViewModel = [[ViewModel alloc] initWithPerson:person];
  }
  return _personViewModel;
}

@end
