//
//  CLHHallTableViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/19.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//
#define KeyWindow [UIApplication sharedApplication].keyWindow

#import "CLHHallTableViewController.h"
#import "UIImage+CLH.h"
#import "CLHCoverView.h"
#import "CLHPopMenuView.h"

@interface CLHHallTableViewController () <CLHPopMenuViewDelegate>

@end

@implementation CLHHallTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage renderOrigenImageWithImageName:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(buttonOnClick)];
}

//按钮点击
-(void)buttonOnClick{
    
    //显示蒙版
    [CLHCoverView showInCenter:KeyWindow.bounds];
    //显示View
    CLHPopMenuView *popV = [CLHPopMenuView popMenuCenter:KeyWindow.center];
    
    popV.delegate = self;
    
}

//关闭蒙版
-(void)PopMenuViewDidCloseButton:(CLHPopMenuView *)popV{
    //利用block进行传递
    [popV hidenMenuViewInPoint:CGPointMake(44, 44) completion:^{
       
        for(UIView *view in KeyWindow.subviews){
            if([view isKindOfClass:[CLHCoverView class]]){
                [view removeFromSuperview];
            }
        }
        
    }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
