//
//  CLHDataButton.m
//  彩票
//
//  Created by AnICoo1 on 16/12/21.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHDataButton.h"
#import "UIView+CLH.h"

@implementation CLHDataButton


//重新布局子控件
- (void)layoutSubviews{
    [super layoutSubviews];
    
    if(self.titleLabel.x > self.imageView.x){
        self.titleLabel.x = self.imageView.x;
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);
    }
    
}



@end
