//
//  UIImage+CLH.m
//  彩票
//
//  Created by AnICoo1 on 16/12/20.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "UIImage+CLH.h"

@implementation UIImage (CLH)



+ (UIImage *)renderOrigenImageWithImageName:(NSString *)imageName{
    
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return image;
}

@end
