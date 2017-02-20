//
//  CLHTabBar.h
//  彩票
//
//  Created by AnICoo1 on 16/12/19.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CLHTabBar;

//代理，用来通知点击的哪个按钮来切换控制器
@protocol tabBarDelegate <NSObject>

- (void)tabBar:(CLHTabBar *)tabBar index:(NSInteger)index;

@end



@interface CLHTabBar : UIView


/* 子控件*/
@property (nonatomic,strong) NSArray *tabBarArray;

@property (nonatomic,weak) id<tabBarDelegate> delegate;

@end
