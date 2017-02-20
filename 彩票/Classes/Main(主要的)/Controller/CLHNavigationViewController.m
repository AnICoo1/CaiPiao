//
//  CLHNavigationViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/20.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHNavigationViewController.h"
#import "UIImage+CLH.h"


@interface CLHNavigationViewController () <UINavigationControllerDelegate>

@property(nonatomic, strong) id popDelegate;


@end

@implementation CLHNavigationViewController


//只会调用一次，但是当有子类的时候，会调用多次
+ (void)initialize{
    
    //加入判断屏蔽可能的子类的多次调用
    if(self == [CLHNavigationViewController class]){
        UINavigationBar *nav = [UINavigationBar appearanceWhenContainedIn:[CLHNavigationViewController class], nil];
        
        //设置背景图片
        UIImage *image = [UIImage imageNamed:@"NavBar64"];
        [nav setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
        
        //设置标题属性
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSFontAttributeName] = [UIFont systemFontOfSize:22];
        dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
        
        [nav setTitleTextAttributes:dict];
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //实现滑动返回
    
    //记录手势代理
    self.popDelegate = self.interactivePopGestureRecognizer.delegate;
    
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    
    if(self.viewControllers[0] == viewController){
        //当当前控制器为根控制器的时候，还原代理
        self.interactivePopGestureRecognizer.delegate = self.popDelegate;
        
    } else{
        //当当前控制器不是根控制器的时候，清空代理
        self.interactivePopGestureRecognizer.delegate = nil;
        
    }
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if(self.viewControllers.count > 0){
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    
    [super pushViewController:viewController animated:animated];
    
    
    if(self.viewControllers.count > 1){
        
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage renderOrigenImageWithImageName:@"NavBack"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    }
    
}

- (void)back{
    [self popViewControllerAnimated:YES];
}
@end
