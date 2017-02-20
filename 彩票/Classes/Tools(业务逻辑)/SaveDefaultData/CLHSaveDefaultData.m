//
//  CLHSaveDefaultData.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHSaveDefaultData.h"

@implementation CLHSaveDefaultData



+ (nullable id)objectForKey:(NSString *)defaultName{
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+ (void)setObject:(id)value forKey:(NSString *)defaultName{
    if(defaultName){
        //屏蔽外界传过来的参数为nil
        [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
        
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}

@end
