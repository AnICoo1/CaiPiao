//
//  CLHSettingItem.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHSettingItem.h"

@implementation CLHSettingItem



+ (instancetype)settingItemWithIcon:(NSString *)icon andName:(NSString *)name{
    
    CLHSettingItem *setItem = [[self alloc] init];

    
    setItem.icon = icon;
    setItem.name = name;
    return setItem;
}



@end
