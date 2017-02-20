//
//  CLHOpenDataViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/21.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHOpenDataViewController.h"
#import "CLHDataButton.h"



@interface CLHOpenDataViewController ()

@end

@implementation CLHOpenDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *button = [[CLHDataButton alloc] init];
    
    [button setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    [button setTitle:@"开奖啦" forState:UIControlStateNormal];
    
    [button sizeToFit];
    
    
    self.navigationItem.titleView = button;
}


@end
