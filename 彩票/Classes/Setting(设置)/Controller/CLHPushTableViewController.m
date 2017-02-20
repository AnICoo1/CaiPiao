//
//  CLHPushTableViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/24.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHPushTableViewController.h"
#import "CLHScoreTableViewController.h"
#import "CLHAwardTableViewController.h"

@interface CLHPushTableViewController ()

@end

@implementation CLHPushTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setItemOfGroup1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//第1组
- (void)setItemOfGroup1{
    
    
    CLHSettingArrowItem *item11 = [CLHSettingArrowItem settingItemWithIcon:nil andName:@"开奖推送"];
    item11.nextVC = [CLHAwardTableViewController class];
    
    CLHSettingArrowItem *item12 = [CLHSettingArrowItem settingItemWithIcon:nil andName:@"比分直播"];
    item12.nextVC = [CLHScoreTableViewController class];
    
    CLHSettingArrowItem *item13= [CLHSettingArrowItem settingItemWithIcon:nil andName:@"中奖动画"];
    CLHSettingItem *item14 = [CLHSettingArrowItem settingItemWithIcon:nil andName:@"开奖大厅"];
    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item11,item12,item13,item14];
    
    [self.groups addObject:group];
    
    
}
@end
