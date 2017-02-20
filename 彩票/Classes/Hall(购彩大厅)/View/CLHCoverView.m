//
//  CLHCoverView.m
//  彩票
//
//  Created by AnICoo1 on 16/12/20.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//
#define KeyWindow [UIApplication sharedApplication].keyWindow
#import "CLHCoverView.h"

@implementation CLHCoverView


+ (void)showInCenter:(CGRect) center{
    CLHCoverView *coverV = [[CLHCoverView alloc] init];
    
    coverV.frame = center;
    
    coverV.backgroundColor = [UIColor blackColor];
    
    coverV.alpha = 0.7;
    
    [KeyWindow addSubview:coverV];
}

@end
