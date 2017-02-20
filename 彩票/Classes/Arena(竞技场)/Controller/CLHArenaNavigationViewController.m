//
//  CLHArenaNavigationViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/21.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHArenaNavigationViewController.h"
#import "UIImage+CLH.h"


@interface CLHArenaNavigationViewController ()

@end

@implementation CLHArenaNavigationViewController


+ (void)initialize{
    
    
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    UIImage *image = [UIImage imageNamed:@"NLArenaNavBar64"];
    
    [bar setBackgroundImage:[image stretchableImageWithLeftCapWidth:image.size.width / 2 topCapHeight:image.size.height / 2] forBarMetrics:UIBarMetricsDefault];
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

@end
