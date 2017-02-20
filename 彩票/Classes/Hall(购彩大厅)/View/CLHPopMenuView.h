//
//  CLHPopMenuView.h
//  彩票
//
//  Created by AnICoo1 on 16/12/20.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CLHPopMenuView;

@protocol CLHPopMenuViewDelegate <NSObject>

- (void)PopMenuViewDidCloseButton:(CLHPopMenuView *)popV;

@end



@interface CLHPopMenuView : UIView

@property (nonatomic,weak) id<CLHPopMenuViewDelegate> delegate;


+ (instancetype)popMenuCenter:(CGPoint)center;

-(void)hidenMenuViewInPoint:(CGPoint)point completion:(void(^)())completion;


@end
