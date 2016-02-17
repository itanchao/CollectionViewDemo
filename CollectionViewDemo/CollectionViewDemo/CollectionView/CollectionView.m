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
    layout.itemSize = CGSizeMake(165, 128);
    // 最小的行间距
    layout.minimumLineSpacing = 15;
    // 最小水平间距
    layout.minimumInteritemSpacing = 15;
    // 组间距
    layout.sectionInset = UIEdgeInsetsMake(10, 15, 10, 15);
    self = [super initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layout];
    [self registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self registerClass:[CollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    self.dataSource =self;
    self.delegate = self;
    self.backgroundColor = [UIColor whiteColor];
    return self;
}
#pragma mark 数据源方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    //    LightDataSaurce *data = self.Lightdatasauce[section];
    return 20;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}


/// 设置header的高度
-(CGSize)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 41);
}
//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"cell";
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
//    [cell sizeToFit];
    if (!cell) {
        NSLog(@"无法创建CollectionViewCell时打印，自定义的cell就不可能进来了。");
    }
    
    return cell;
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath

{

    CollectionReusableView *reusableview = nil;

    if (kind == UICollectionElementKindSectionFooter){
        return reusableview;
    }
    reusableview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
    return reusableview;
}

#pragma mark --UICollectionViewDelegate
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //    UICollectionViewCell * cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    //    cell.backgroundColor = [UIColor redColor];
    NSLog(@"选择%ld",indexPath.row);
}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

@end
