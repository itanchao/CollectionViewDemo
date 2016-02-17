//
//  CollectionView.m
//  CollectionViewDemo
//
//  Created by tanchao on 16/2/17.
//  Copyright © 2016年 谈超. All rights reserved.
//

#import "CollectionView.h"
#import "CollectionViewCell.h"
#import "CollectionReusableView.h"
@interface CollectionView ()<UICollectionViewDataSource,UICollectionViewDelegate>


@end
@implementation CollectionView
- (instancetype)initWithFrame:(CGRect)frame{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    // cell 大小
    layout.itemSize = CGSizeMake(70, 80);
    // 最小的行间距
    layout.minimumLineSpacing = 20;
    // 最小水平间距
    layout.minimumInteritemSpacing = 5;
    // 组间距
    //    layout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20);
    layout.sectionInset = UIEdgeInsetsMake(0, 20, 0, 20);
    [self registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@""];
    [self registerClass:[CollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@""];
    //    [layout setSectionHeadersPinToVisibleBounds:YES];
    self.dataSource =self;
    self.delegate = self;
    CGRect rect = CGRectMake(0,50, CGRectGetWidth(frame), CGRectGetHeight(frame)-120);
    return  [super initWithFrame:rect collectionViewLayout:layout];
}


@end
