//
//  CLHMyLotteryViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/19.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHMyLotteryViewController.h"
#import "UIImage+CLH.h"
#import "CLHSettingTableViewController.h"

@interface CLHMyLotteryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation CLHMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //设置按钮背景图片
    UIImage *image = self.loginButton.currentBackgroundImage;
    
    image = [image stretchableImageWithLeftCapWidth:image.size.width / 2 topCapHeight:image.size.height / 2];
    [self.loginButton setBackgroundImage:image forState:UIControlStateNormal];
    
    
    //设置左侧导航栏按钮
    UIButton *leftButton = [[UIButton alloc] init];
    [leftButton setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    [leftButton setTitle:@"客服" forState:UIControlStateNormal];
    //自动布局
    [leftButton sizeToFit];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    
    
    //设置右侧导航栏按钮
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage renderOrigenImageWithImageName:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(ClickRightButton)];
}

- (void)ClickRightButton{
    
    CLHSettingTableViewController *setting = [[CLHSettingTableViewController alloc] init];
    
    
    
    [self.navigationController pushViewController:setting animated:YES];
    
}


@end
