//
//  CollectionViewCell.m
//  CollectionViewDemo
//
//  Created by tanchao on 16/2/17.
//  Copyright © 2016年 谈超. All rights reserved.
//

#import "CollectionViewCell.h"
#import <Masonry.h>
@interface CollectionViewCell ()
@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *desLabel;
@end
@implementation CollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    self.iconView = ({
        UIImageView *view = [[UIImageView alloc]init];
        [self addSubview:view];
        view.image = [UIImage imageNamed:@"cat"];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.equalTo(@100);
        }];
        view;
    });
    self.desLabel = ({
        UILabel *lbl = [[UILabel alloc]init];
        [self addSubview:lbl];
        lbl.font = [UIFont systemFontOfSize:10];
        [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(self.iconView.mas_bottom).offset(10);
        }];
        lbl.text = @"多功能方向盘";
        lbl;
    });
    return self;
}
@end
