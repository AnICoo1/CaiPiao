//
//  CLHArenaViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/19.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHArenaViewController.h"

@interface CLHArenaViewController ()

@end

@implementation CLHArenaViewController

//加载View
-(void)loadView{
    
    //加载背景图片
    UIImageView *imageV =[[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    imageV.image = [UIImage imageNamed:@"NLArenaBackground"];
    
    imageV.userInteractionEnabled = YES;
    
    //直接赋值，不可调用self.view的方法等，因为还没有创建,如果调用系统会继续进入此方法，会造成死循环
    self.view = imageV;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISegmentedControl *sgVC = [[UISegmentedControl alloc] initWithItems:@[@"足球",@"篮球"]];
    
    //设置背景图片
    [sgVC setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [sgVC setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    NSDictionary *dict = @{
                           NSForegroundColorAttributeName:[UIColor whiteColor]
                           };
    
    [sgVC setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    
    [sgVC setSelectedSegmentIndex:0];
    
    //设置标题View
    self.navigationItem.titleView = sgVC;
    
    
}

@end
