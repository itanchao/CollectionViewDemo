//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by tanchao on 16/2/17.
//  Copyright © 2016年 谈超. All rights reserved.
//

#import "ViewController.h"
#import "CollectionView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CollectionView *cv = [[CollectionView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:cv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
