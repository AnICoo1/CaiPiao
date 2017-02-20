//
//  CLHRootViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHRootViewController.h"
#import "CLHTabBarViewController.h"
#import "CLHNewCollectionViewController.h"
#import "CLHSaveDefaultData.h"

@implementation CLHRootViewController

+ (UIViewController *)chooseRootViewController{
    //获取当前版本
    NSString *version = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    
    NSString *lastVersion = [CLHSaveDefaultData objectForKey:@"version"];
    UIViewController *rootVC;
    
    
    if([version isEqualToString:lastVersion]){
        
        rootVC = [[CLHTabBarViewController alloc] init];
        
    } else{
        rootVC = [[CLHNewCollectionViewController alloc] init];
        [CLHSaveDefaultData setObject:version forKey:@"version"];
    }

    return rootVC;
}


@end
