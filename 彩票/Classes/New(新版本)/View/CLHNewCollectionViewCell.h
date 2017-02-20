//
//  CLHNewCollectionViewCell.h
//  彩票
//
//  Created by AnICoo1 on 16/12/22.
//  Copyright © 2016年 AnICoo1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLHNewCollectionViewCell : UICollectionViewCell




@property (nonatomic,weak) UIImage *image;



-(void)setIndexPath:(NSIndexPath *)indexPath count:(NSInteger)count;
@end
