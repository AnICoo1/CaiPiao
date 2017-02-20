//
//  CLHSettingItem.h
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface CLHSettingItem : NSObject

//图片
@property (nonatomic,weak) NSString *icon;

//文字标题
@property (nonatomic,weak) NSString *name;

//子标题
@property (nonatomic,weak) NSString *subName;

//存储点击该cell将要干的事情
@property (nonatomic,copy) void(^operationBlock)(NSIndexPath *indexPath);



+ (instancetype)settingItemWithIcon:(NSString *)icon andName:(NSString *)name;


@end
