//
//  CLHNewCollectionViewController.m
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import "CLHNewCollectionViewController.h"
#import "CLHNewCollectionViewCell.h"
#import "UIView+CLH.h"

@interface CLHNewCollectionViewController ()


@property(nonatomic, weak) UIImageView *ImageV;

@property(nonatomic, assign)  CGFloat lastOffset;


@end



@implementation CLHNewCollectionViewController

- (instancetype)init{
    
    //创建一个流布局
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //设置item的尺寸
    layout.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    //设置滚动方向
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //设置距离边界距离
    layout.minimumLineSpacing = 0;
    
    
    
    
    return [super initWithCollectionViewLayout:layout];
    
}

static NSString *const ID = @"NewBegin";


- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    //设置标识
    [self.collectionView registerClass:[CLHNewCollectionViewCell class] forCellWithReuseIdentifier:ID];
 
    //设置分页
    self.collectionView.pagingEnabled = YES;
    
    //取消弹簧效果
    self.collectionView.bounces = NO;
    
    //取消滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    
    
    //添加内容
    [self addImage];
}

- (void)addImage{
    
    
    //线
    UIImageView *lineImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    [self.collectionView addSubview:lineImageV];
    lineImageV.x -= 150;
    
    //球
    UIImageView *ballImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    [self.collectionView addSubview:ballImageV];
    ballImageV.x += 50;
    self.ImageV = ballImageV;
    
    //大标题
    UIImageView *bigTitleImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    [self.collectionView addSubview:bigTitleImageV];
    bigTitleImageV.center = CGPointMake(self.view.width / 2, self.view.height * 0.7);
    
    //小标题
    UIImageView *smallTitleImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    [self.collectionView addSubview:smallTitleImageV];
    smallTitleImageV.center = CGPointMake(self.view.width / 2, self.view.height * 0.8);
    
}

//滑动减速时调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    
    CGFloat offsetX = scrollView.contentOffset.x;;
    CGFloat dis = offsetX - self.lastOffset;
    
    
    NSInteger page = offsetX / dis;
    
    //判断跳转的页数
    if(page < 0) page = -page;
    
    NSString *name = [NSString stringWithFormat:@"guide%ld",page + 1];
    
    self.ImageV.image = [UIImage imageNamed:name];
    //设置飞出动画
    self.ImageV.x += dis * 2;
    [UIView animateWithDuration:0.25 animations:^{
        
        self.ImageV.x -= dis;
        
    }];
    //记录上一个偏移量
    self.lastOffset = offsetX;
}

#pragma mark - 数据源方法

#define dataCount 4


//多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

//每组有多少数据
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return dataCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //根据标识寻找cell
    CLHNewCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[CLHNewCollectionViewCell alloc] init];
    }
    
    NSString *name = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
    

    cell.image = [UIImage imageNamed:name];
    
    [cell setIndexPath:indexPath count:dataCount];
    
    return cell;
    
}


@end
