//
//  CollectionReusableView.m
//  CollectionViewDemo
//
//  Created by tanchao on 16/2/17.
//  Copyright © 2016年 谈超. All rights reserved.
//

#import "CollectionReusableView.h"
#import <Masonry.h>
@interface CollectionReusableView ()
@property (nonatomic, strong) UILabel *desLbl;
@end
@implementation CollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    UIView *blueView = ({
        UIView *view = [[UIView alloc]init];
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(self).offset(15);
            make.bottom.mas_equalTo(self).offset(10);
            make.width.equalTo(@4);
        }];
        view.backgroundColor = [UIColor blueColor];
        view;
    });
    self.desLbl = ({
        UILabel *view = [[UILabel alloc]init];
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(blueView.mas_right).offset(5);
            make.centerY.mas_equalTo(blueView.mas_centerY);
        }];
        view.text = @"车型亮点";
        view.font = [UIFont systemFontOfSize:16];
        [view sizeToFit];
        view;
    });
    return self;
}
@end
