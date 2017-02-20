//
//  CLHScoreTableViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/24.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHScoreTableViewController.h"

@interface CLHScoreTableViewController ()

@end

@implementation CLHScoreTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setItemOfGroup0];
    
    [self setItemOfGroup1];
    
    [self setItemOfGroup2];
    
}

//第0组
- (void)setItemOfGroup0{
    CLHSettingSwitchItem *item = [CLHSettingSwitchItem settingItemWithIcon:nil andName:@"关注比赛"];
    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item];
    
    [self.groups addObject:group];
}

//第1组
- (void)setItemOfGroup1{
    CLHSettingArrowItem *item = [CLHSettingArrowItem settingItemWithIcon:nil andName:@"开始时间"];
    item.subName = @"00:00";
    
    __weak typeof(self) weakSelf = self;
    
    //弹出键盘
    item.operationBlock = ^(NSIndexPath *indexPath){
        
        UITableViewCell *cell = [weakSelf.tableView cellForRowAtIndexPath:indexPath];
        
        UITextField *textField = [[UITextField alloc] init];
        
        
        [cell addSubview:textField];
        //设置为键盘为第一响应者
        [textField becomeFirstResponder];
        
    };
    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item];
    
    [self.groups addObject:group];
}

//第2组
- (void)setItemOfGroup2{
    CLHSettingArrowItem *item = [CLHSettingArrowItem settingItemWithIcon:nil andName:@"结束时间"];
    item.subName = @"12:00";
    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item];
    
    [self.groups addObject:group];
}


- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}

@end
