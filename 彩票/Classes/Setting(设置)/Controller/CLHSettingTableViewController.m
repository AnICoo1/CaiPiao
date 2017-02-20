//
//  CLHSettingTableViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHSettingTableViewController.h"
#import "CLHPushTableViewController.h"
#import "MBProgressHUD+XMG.h"

@interface CLHSettingTableViewController ()


@end

@implementation CLHSettingTableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置cell标记
    [self.tableView registerClass:[CLHSettingTableViewCell class] forCellReuseIdentifier:@"tableCell"];
    //设置标题
    self.title = @"设置";
    
    //加载数据
    
    //0.第0组
    [self setItemOfGroup0];
    
    //1.第一组
    [self setItemOfGroup1];
    
    //2.第二组
    [self setItemOfGroup2];
}

#pragma mark - 添加数据
//第0组
- (void)setItemOfGroup0{
    
    CLHSettingArrowItem *item = [CLHSettingArrowItem settingItemWithIcon:@"RedeemCode" andName:@"使用税换码"];
    item.nextVC = [UITableViewController class];
    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item];
    
    [self.groups addObject:group];
    
}

//第1组
- (void)setItemOfGroup1{
    
    
    CLHSettingArrowItem *item11 = [CLHSettingArrowItem settingItemWithIcon:@"MorePush" andName:@"推送和提醒"];
    item11.nextVC = [CLHPushTableViewController class];
    
    CLHSettingSwitchItem *item12 = [CLHSettingSwitchItem settingItemWithIcon:@"handShake" andName:@"使用摇一摇"];
    item12.on = YES;
    
    CLHSettingSwitchItem *item13= [CLHSettingSwitchItem settingItemWithIcon:@"sound_Effect" andName:@"声音效果"];
    
    CLHSettingItem *item14 = [CLHSettingSwitchItem settingItemWithIcon:@"More_LotteryRecommend" andName:@"购彩小助手"];
    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item11,item12,item13,item14];
    
    [self.groups addObject:group];
    
    
}

//第2组
- (void)setItemOfGroup2{
    
    
    
    CLHSettingArrowItem *item21 = [CLHSettingArrowItem settingItemWithIcon:@"RedeemCode" andName:@"检查新版本"];
    item21.nextVC = [UIViewController class];
    item21.operationBlock = ^(NSIndexPath *indexPath){
        
        [MBProgressHUD showSuccess:@"当前已是最新版本" toView:self.view];
    };
    
    CLHSettingArrowItem *item22 = [CLHSettingArrowItem settingItemWithIcon:@"MoreShare" andName:@"分享"];
    item22.nextVC = [UIViewController class];
    item22.operationBlock = ^(NSIndexPath *indexPath){
        
        [MBProgressHUD showSuccess:@"尚未开发" toView:self.view];
    };

    
    CLHSettingArrowItem *item23 = [CLHSettingArrowItem settingItemWithIcon:@"MoreNetease" andName:@"产品推荐"];
    item23.nextVC = [UIViewController class];
    item23.operationBlock = ^(NSIndexPath *indexPath){
        
        [MBProgressHUD showSuccess:@"尚未开发" toView:self.view];
    };

    
    CLHSettingArrowItem *item24 = [CLHSettingArrowItem settingItemWithIcon:@"MoreAbout" andName:@"关于"];
    item24.nextVC = [UIViewController class];
    item24.operationBlock = ^(NSIndexPath *indexPath){
        
        [MBProgressHUD showSuccess:@"尚未开发" toView:self.view];
    };

    CLHSettingGroup *group = [[CLHSettingGroup alloc] init];
    group.items = @[item21, item22, item23, item24];
    
    [self.groups addObject:group];
    
}
@end
