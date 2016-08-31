//
//  PSCountDownButton.h
//  CEAir
//
//  Created by Pan on 16/7/22.
//  Copyright © 2016年 hengtiansoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSCountDownButton : UIButton

/**
 *  这个按钮多长时间才能点一次,默认为 30 秒
 */
@property (nonatomic, assign) IBInspectable NSInteger limitdSec;

/**
 *  重置 button 状态。标题变成原标题
 */
- (void)reset;

/**
 *  开始倒计时。一般来说，你不需要手动调用这个方法。因为当用户点击按钮的时候，按钮会自动进入倒计时状态。
 *  提供这个方法是为了某些情况下，便于你手动触发倒计时。
 */
- (void)countDown;

@end
