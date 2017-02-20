//
//  CLHTabBar.m
//  彩票
//
//  Created by AnICoo1 on 16/12/19.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHTabBar.h"
#import "CLHTabBarButton.h"


@interface CLHTabBar ()



@property(nonatomic, strong) UIButton *ClickButton;

@end


@implementation CLHTabBar



- (void)setTabBarArray:(NSArray *)tabBarArray{
    _tabBarArray = tabBarArray;
    for(int i = 0; i < self.tabBarArray.count; i++){
        UITabBarItem *tabBarItem = self.tabBarArray[i];
        UIButton *btn = [[CLHTabBarButton alloc] init];
        [btn setBackgroundImage:tabBarItem.image forState:UIControlStateNormal];
        [btn setBackgroundImage:tabBarItem.selectedImage forState:UIControlStateSelected];
        [self addSubview:btn];
        
        
        [btn addTarget:self action:@selector(buttonOnClick:) forControlEvents:UIControlEventTouchDown];
    }
}

//按钮点击
- (void)buttonOnClick: (UIButton *)button{
    
    //1.取消上次的点击
    self.ClickButton.selected = NO;
    //2.记录此次的点击
    button.selected = YES;
    //3.记录此次点击的按钮
    self.ClickButton = button;
    
    
    if([self.delegate respondsToSelector:@selector(tabBar:index:)]){
        [self.delegate tabBar:self index:self.ClickButton.tag];
    }
    
}

//布局子控件
- (void)layoutSubviews{
    [super layoutSubviews];
    
    
    
    CGFloat itemX = 0;
    CGFloat itemY = 0;
    CGFloat itemW = self.frame.size.width / self.tabBarArray.count;
    CGFloat itemH = self.frame.size.height;
    
    int i = 0;
    
    for (UIButton *btn in self.subviews) {
        
        btn.tag = i;
        if(i == 0){
            [self buttonOnClick:btn];
        }
        
        
        itemX = itemW * i;
        btn.frame = CGRectMake(itemX, itemY, itemW, itemH);
        
        i++;
    }
    
    
}


@end
