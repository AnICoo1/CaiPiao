//
//  CLHBaseTableViewController.h
//  彩票
//
//  Created by AnICoo1 on 16/12/24.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLHSettingTableViewCell.h"
#import "CLHSettingArrowItem.h"
#import "CLHSettingSwitchItem.h"
#import "CLHSettingItem.h"
#import "CLHSettingGroup.h"

@interface CLHBaseTableViewController : UITableViewController


@property(nonatomic ,strong) NSMutableArray *groups;


@end
