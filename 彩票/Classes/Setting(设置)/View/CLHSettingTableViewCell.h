//
//  CLHSettingTableViewCell.h
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLHSettingItem.h"


@interface CLHSettingTableViewCell : UITableViewCell


@property (nonatomic,strong) CLHSettingItem *item;


+ (instancetype)cellWithTableView:(UITableView *)tableView;

+ (instancetype)cellWithTableView:(UITableView *)tableView  andStyle:(UITableViewCellStyle)cellStyle;

@end
