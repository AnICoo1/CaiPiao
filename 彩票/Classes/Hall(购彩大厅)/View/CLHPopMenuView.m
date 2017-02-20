//
//  CLHPopMenuView.m
//  彩票
//
//  Created by AnICoo1 on 16/12/20.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//
#define KeyWindow [UIApplication sharedApplication].keyWindow
#import "CLHPopMenuView.h"

@implementation CLHPopMenuView


+ (instancetype)popMenuCenter:(CGPoint)center{
    CLHPopMenuView *popV = [[[NSBundle mainBundle] loadNibNamed:@"CLHPopMenu" owner:nil options:nil] lastObject];
    
    popV.center = center;
    [KeyWindow addSubview:popV];
    
    return popV;
}

//点击了关闭按钮
- (IBAction)close:(id)sender {

    
    if([self.delegate respondsToSelector:@selector(PopMenuViewDidCloseButton:)]){
        [self.delegate PopMenuViewDidCloseButton:self];
    }
    
}

-(void)hidenMenuViewInPoint:(CGPoint)point completion:(void (^)())completion{
    [UIView animateWithDuration:0.5 animations:^{
        self.center = point;
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        completion();
    }];
}



@end
