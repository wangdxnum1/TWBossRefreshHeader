//
//  TWBossRefreshHeaderEx.m
//  TWBossRefreshHeader
//
//  Created by HaKim on 2017/5/2.
//  Copyright © 2017年 haKim. All rights reserved.
//

#import "TWBossRefreshHeaderEx.h"

@implementation TWBossRefreshHeaderEx

#pragma mark - 重写方法
#pragma mark 基本设置
- (void)prepare
{
    [super prepare];
    
    // 设置普通状态的动画图片
    NSMutableArray *idleImages = [NSMutableArray array];
    for (NSUInteger i = 1; i<=60; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@p", @(i)]];
        [idleImages addObject:image];
    }
    [self setImages:idleImages forState:MJRefreshStateIdle];
    
    // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
    NSMutableArray *refreshingImages = [NSMutableArray array];
    for (NSUInteger i = 1; i<=24; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@r", @(i)]];
        [refreshingImages addObject:image];
    }
    
    [self setImages:refreshingImages duration:1.0 forState:MJRefreshStatePulling];
    
    // 设置正在刷新状态的动画图片
    [self setImages:refreshingImages duration:1.0 forState:MJRefreshStateRefreshing];
    
    // 隐藏时间
    self.lastUpdatedTimeLabel.hidden = YES;
    
    // 隐藏状态
    self.stateLabel.hidden = YES;
}

- (void)placeSubviews{
    [super placeSubviews];
    
    /* 根据图片设置控件的高度 */
    self.gifView.mj_h = 120 *0.5;
    self.gifView.mj_w = 55 *0.5;
    self.gifView.mj_x = (self.mj_w - self.gifView.mj_w) / 2.0;
    self.gifView.mj_y = (self.mj_h - self.gifView.mj_h) / 2.0 + 5;
    
    self.gifView.contentMode = UIViewContentModeScaleToFill;
}

- (void)setImages:(NSArray *)images duration:(NSTimeInterval)duration forState:(MJRefreshState)state
{
    [super setImages:images duration:duration forState:state];
    
    
    
    self.mj_h = 75;
    
}


@end
