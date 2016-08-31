//
//  PSCountDownButton.m
//  CEAir
//
//  Created by Pan on 16/7/22.
//  Copyright © 2016年 hengtiansoft. All rights reserved.
//

#import "PSCountDownButton.h"
#import "PSWeakProxy.h"

NSInteger const DefaultLimitedSec = 30;

@interface PSCountDownButton ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, copy) NSString *normalTitle;

@end

@implementation PSCountDownButton
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setUp];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setUp];
    }
    return self;
}

- (void)setUp
{
    [self addTarget:self
             action:@selector(countDown)
   forControlEvents:UIControlEventTouchUpInside];
    self.normalTitle = self.currentTitle;
    [self setValue:@(UIButtonTypeCustom) forKey:@"buttonType"];
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    if (state == UIControlStateNormal
        || !self.normalTitle)
    {
        self.normalTitle = title;
    }
}

#pragma mark - Public
- (void)reset
{
    self.enabled = YES;
    [self stopTimer];
    [self setTitle:self.normalTitle forState:UIControlStateNormal];
}

- (void)countDown
{
    [self stopTimer];
    self.enabled = NO;
    PSWeakProxy *weakSelf = [[PSWeakProxy alloc] initWithObject:self];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                  target:weakSelf
                                                selector:@selector(timeIsPassing:)
                                                userInfo:[NSDate date]
                                                 repeats:YES];
    [self.timer setFireDate: [NSDate distantPast]];
}

#pragma mark - Private

- (void)stopTimer
{
    if (self.timer && [self.timer isValid])
    {
        //取消定时器
        [self.timer invalidate];
    }
    self.timer = nil;
}

- (void)timeIsPassing:(NSTimer *)paramTimer
{
    NSDate *startTime = paramTimer.userInfo;
    NSDate *now = [NSDate date];
    NSTimeInterval secondInterval = [now timeIntervalSinceDate:startTime];
    NSInteger remainSec = self.limitdSec - round(secondInterval);
    NSString *remainSecText = [NSString stringWithFormat:@"%1ld",remainSec];
    
    if (remainSec <= 0)
    {
        [self reset];
    }
    else
    {
        [self setTitle:remainSecText forState:UIControlStateDisabled];
    }
}

- (NSInteger)limitdSec
{
    if (_limitdSec <= 0)
    {
        _limitdSec = DefaultLimitedSec;
    }
    return _limitdSec;
}
@end
