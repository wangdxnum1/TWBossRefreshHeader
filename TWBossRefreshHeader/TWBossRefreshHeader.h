//
//  TWBossRefreshHeader.h
//  TWBossRefreshHeader
//
//  Created by HaKim on 2017/5/2.
//  Copyright © 2017年 haKim. All rights reserved.
//

#import <MJRefresh/MJRefresh.h>

@interface TWBossRefreshHeader : MJRefreshStateHeader

@property (weak, nonatomic, readonly) UIImageView *gifView;

/** 设置state状态下的动画图片images 动画持续时间duration*/
- (void)setImages:(NSArray *)images duration:(NSTimeInterval)duration forState:(MJRefreshState)state;
- (void)setImages:(NSArray *)images forState:(MJRefreshState)state;

@end
