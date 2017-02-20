//
//  CLHSettingGroup.h
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLHSettingGroup : NSObject


@property (nonatomic,weak) NSString *headTitle;

@property (nonatomic,weak) NSString *footTitle;

@property (nonatomic,strong) NSArray *items;

@end
