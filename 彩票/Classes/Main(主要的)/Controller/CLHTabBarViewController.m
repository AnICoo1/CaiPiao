//
//  CLHTabBarViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/19.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHTabBarViewController.h"
#import "CLHArenaViewController.h"
#import "CLHMyLotteryViewController.h"
#import "CLHHallTableViewController.h"
#import "CLHDiscoverTableViewController.h"
#import "CLHHistoryDataTableViewController.h"
#import "CLHTabBar.h"
#import "CLHNavigationViewController.h"
#import "CLHArenaNavigationViewController.h"


@interface CLHTabBarViewController () <tabBarDelegate>

//存储item
@property(nonatomic, strong) NSMutableArray *itemArray;


@end



@implementation CLHTabBarViewController


//懒加载
- (NSMutableArray *)itemArray{
    if(!_itemArray){
        _itemArray = [NSMutableArray array];
    }
    return _itemArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    [self setTabBar];
    
}

- (void)setUpAllChildViewController{
    
    //购彩大厅
    CLHHallTableViewController *hall = [[CLHHallTableViewController alloc] init];
    [self addOneChildWithViewController:hall image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selectedImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] titleName:@"购彩大厅"];
    
    //竞技场
    CLHArenaViewController *arenaV = [[CLHArenaViewController alloc] init];
    //arenaV.tabBarItem.image = [UIImage imageNamed:@""];
    
    [self addOneChildWithViewController:arenaV image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"]
        titleName:@"竞技场"];
    
    
    //发现
    CLHDiscoverTableViewController *discover = [[CLHDiscoverTableViewController alloc] init];
    [self addOneChildWithViewController:discover image:[UIImage imageNamed:@"TabBar_Discovery_new"] selectedImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]
        titleName:@"发现"];
    
    //开奖信息
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"CLHHistoryDataTableViewController" bundle:nil];
    CLHHistoryDataTableViewController *history =  [storyboard instantiateInitialViewController];
    
    //CLHHistoryDataTableViewController *history = [[CLHHistoryDataTableViewController alloc] init];
    [self addOneChildWithViewController:history image:[UIImage imageNamed:@"TabBar_History_new"] selectedImage:[UIImage imageNamed:@"TabBar_History_selected_new"]
        titleName:@"开奖信息"];
    
    //我的彩票
    CLHMyLotteryViewController *myLottery = [[CLHMyLotteryViewController alloc] init];
    [self addOneChildWithViewController:myLottery image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selectedImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"]
        titleName:@"我的彩票"];
    
}


-(void)tabBar:(CLHTabBar *)tabBar index:(NSInteger)index{
    self.selectedIndex = index;
}


-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    for (UIView *view in self.tabBar.subviews) {
        if(![view isKindOfClass:[CLHTabBar class]]){
            [view removeFromSuperview];
        }
    }
}

-(void)setTabBar{
    
    
    
    //[self.tabBar removeFromSuperview];
    
    
    
    CLHTabBar *tabBar = [[CLHTabBar alloc] init];
    
    tabBar.tabBarArray = self.itemArray;
    
    tabBar.delegate = self;
    
    tabBar.backgroundColor = [UIColor greenColor];
    [self.tabBar addSubview:tabBar];
    
    
    tabBar.frame = self.tabBar.bounds;
    
}



- (void)addOneChildWithViewController:(UIViewController *)VC image:(UIImage *)image selectedImage:(UIImage *)selectedImage titleName:(NSString *)titleName{
    
    //设置VC对应属性
    VC.tabBarItem.image = image;
    VC.tabBarItem.selectedImage = selectedImage;
    VC.navigationItem.title = titleName;
    UINavigationController *nav = [[CLHNavigationViewController alloc] initWithRootViewController:VC];
    
    if([VC isKindOfClass:[CLHArenaViewController class]]){
        nav = [[CLHArenaNavigationViewController alloc] initWithRootViewController:VC];
    }
    
    [self addChildViewController:nav];
    
    
    [self.itemArray addObject:nav.tabBarItem];
    
    
}



@end
