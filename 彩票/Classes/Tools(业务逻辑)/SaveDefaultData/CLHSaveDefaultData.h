//
//  CLHSaveDefaultData.h
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLHSaveDefaultData : NSObject




+ (nullable id)objectForKey:(NSString *)defaultName;

+ (void)setObject:(nullable id)value forKey:(NSString *)defaultName;

@end
