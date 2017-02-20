//
//  CLHSettingTableViewCell.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHSettingTableViewCell.h"
#import "CLHSettingArrowItem.h"
#import "CLHSettingSwitchItem.h"


@implementation CLHSettingTableViewCell


- (void)setItem:(CLHSettingItem *)item{
    _item = item;
    
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.name;
    self.detailTextLabel.text = item.subName;
    
    [self setRightItem];
    
}

- (void)setRightItem{
    
    //NSLog(@"%@",self.item);
    
    if([self.item isKindOfClass:[CLHSettingArrowItem class]]){
        
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
        
        
    } else if([self.item isKindOfClass:[CLHSettingSwitchItem class]]){
        
        CLHSettingSwitchItem *swItem = (CLHSettingSwitchItem *)self.item;
        
        UISwitch *sw = [[UISwitch alloc] init];
        sw.on = swItem.isOn;
        self.accessoryView = sw;
        
    } else{
        
        self.accessoryView = nil;
        
    }
    
}


+ (instancetype)cellWithTableView:(UITableView *)tableView{
    
    CLHSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell"];
    
    if(cell == nil){
        cell = [[CLHSettingTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"tableCell"];
    }

    return cell;
    
}

+ (instancetype)cellWithTableView:(UITableView *)tableView andStyle:(UITableViewCellStyle)cellStyle{
    CLHSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell"];
    
    if(cell == nil){
        cell = [[CLHSettingTableViewCell alloc] initWithStyle:cellStyle reuseIdentifier:@"tableCell"];
    }
    
    return cell;
}



@end
