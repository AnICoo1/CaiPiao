//
//  CLHNewCollectionViewCell.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#define KeyWindow [UIApplication sharedApplication].keyWindow

#import "CLHNewCollectionViewCell.h"
#import "CLHTabBarViewController.h"
#import "UIView+CLH.h"

@interface CLHNewCollectionViewCell ()


@property(weak, nonatomic) UIImageView  *imageV;

@property(weak, nonatomic) UIButton *startButton;

@end


@implementation CLHNewCollectionViewCell

- (UIButton *)startButton{
    if(!_startButton){
        UIButton *button = [[UIButton alloc] init];
        [button setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        [button sizeToFit];
        button.center = CGPointMake(self.width / 2, self.height * 0.9f);
        
        
        [self.contentView addSubview:button];
        
        [button addTarget:self action:@selector(startButtonOnClick:) forControlEvents:UIControlEventTouchUpInside];
        _startButton = button;
        
    }
    
    return _startButton;
}

- (void)startButtonOnClick:(UIButton *)button{
    
    
    CLHTabBarViewController *tabVC = [[CLHTabBarViewController alloc] init];
    KeyWindow.rootViewController = tabVC;
    
    
}

- (UIImageView *)imageV{
    
    if(!_imageV){
        
        UIImageView *bgV = [[UIImageView alloc] initWithFrame:self.bounds];
        
        [self.contentView addSubview:bgV];
        
        _imageV = bgV;
        
    }
    return _imageV;
    
}

- (void)setImage:(UIImage *)image{
    _image = image;
    self.imageV.image = image;
    
}

-(void)setIndexPath:(NSIndexPath *)indexPath count:(NSInteger)count{
    
    if(indexPath.item == count - 1){
        
        self.startButton.hidden = NO;
        
    } else{
        
        self.startButton.hidden = YES;
        
    }
    
    NSLog(@"%@",self.startButton);
    
}

@end
