//
//  CLHAwardTableViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/24.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHAwardTableViewController.h"

@interface CLHAwardTableViewController ()

@end

@implementation CLHAwardTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setGroup];
    
}

- (void)setGroup{
    CLHSettingSwitchItem *item1 = [CLHSettingSwitchItem settingItemWithIcon:nil andName:@"双色球"];
    item1.subName = @"每日开奖";
    CLHSettingSwitchItem *item2 = [CLHSettingSwitchItem settingItemWithIcon:nil andName:@"双色球"];
    item2.subName = @"每日开奖";
    CLHSettingSwitchItem *item3 = [CLHSettingSwitchItem settingItemWithIcon:nil andName:@"双色球"];
    item3.subName = @"每日开奖";
    CLHSettingSwitchItem *item4 = [CLHSettingSwitchItem settingItemWithIcon:nil andName:@"双色球"];
    item4.subName = @"每日开奖";
    CLHSettingSwitchItem *item5 = [CLHSettingSwitchItem settingItemWithIcon:nil andName:@"双色球"];
    item5.subName = @"每日开奖";

    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item1, item2, item3, item4, item5];
    
    [self.groups addObject:group];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CLHSettingTableViewCell *cell = [CLHSettingTableViewCell cellWithTableView:tableView andStyle:UITableViewCellStyleSubtitle];
    
    //设置数据
    CLHSettingGroup *group = self.groups[indexPath.section];
    CLHSettingItem *item = group.items[indexPath.row];
    
    
    cell.item = item;
    
    return cell;
}


@end
