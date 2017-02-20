//
//  CLHBaseTableViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/24.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHBaseTableViewController.h"

@interface CLHBaseTableViewController ()

@end

@implementation CLHBaseTableViewController

-(NSArray *)groups{
    
    if(!_groups){
        
        _groups = [NSMutableArray array];
        
    }
    return _groups;
    
}


//初始化的时候style设置为分组模式
- (instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark - Table view data source



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    CLHSettingGroup *group = self.groups[section];
    
    return group.items.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    CLHSettingGroup *group = self.groups[indexPath.section];
    CLHSettingItem *item = group.items[indexPath.row];
    UIViewController *vc;
    
    if(item.operationBlock){
        item.operationBlock(indexPath);
        
    } else if([item isKindOfClass:[CLHSettingArrowItem class]]){
        //屏蔽：只有带箭头的cell才能进行跳转
        
        CLHSettingArrowItem *arrowItem = (CLHSettingArrowItem *)item;
        
        vc = [[arrowItem.nextVC alloc] init];
        vc.title = arrowItem.name;
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CLHSettingTableViewCell *cell = [CLHSettingTableViewCell cellWithTableView:tableView];
    
    //设置数据
    CLHSettingGroup *group = self.groups[indexPath.section];
    CLHSettingItem *item = group.items[indexPath.row];
    
    
    cell.item = item;
    
    return cell;
}


@end
