//
//  UIButton+JWCountDown.h
//  JWOCTools
//
//  Created by jiang on 2019/11/30.
//  Copyright © 2019 jarvis. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (JWCountDown)

/**
 倒计时
 
 @param seconds seconds
 @param title 标题
 @param completion 倒计时之后回调
 */
- (void)scheduledTimerWithTimeInterval:(NSInteger)seconds
                        countDownTitle:(NSString *)title
                            completion:(void (^)(void))completion;

- (void)scheduledTimerWithTimeInterval:(NSInteger)seconds
                        countDownTitle:(NSString *)title;

/**
 *  倒计时按钮
 *
 *  @param seconds 倒计时总时间
 *  @param title    还没倒计时的title
 *  @param subTitle 倒计时中的子名字，如时、分
 *  @param titleTextColor   还没倒计时的颜色
 *  @param countDownTitleTextColor    倒计时中的颜色
 */
- (void)scheduledTimerWithTimeInterval:(NSInteger)seconds
                                 title:(NSString *)title
                        countDownTitle:(NSString *)subTitle
                        titleTextColor:(UIColor *)titleTextColor
               countDownTitleTextColor:(UIColor *)countDownTitleTextColor
                            completion:(void (^)(void))completion;

- (void)scheduledTimerWithTimeInterval:(NSInteger)seconds
                                 title:(NSString *)title
                        countDownTitle:(NSString *)subTitle
                        titleTextColor:(UIColor *)titleTextColor
               countDownTitleTextColor:(UIColor *)countDownTitleTextColor;

/**
 *  倒计时按钮
 *
 *  @param seconds 倒计时总时间
 *  @param title    还没倒计时的title
 *  @param subTitle 倒计时中的子名字，如时、分
 *  @param titleBackgroundColor   还没倒计时的颜色
 *  @param countDownTitleBackgroundColor    倒计时中的颜色
 */
- (void)scheduledTimerWithTimeInterval:(NSInteger)seconds
                                 title:(NSString *)title
                        countDownTitle:(NSString *)subTitle
                  titleBackgroundColor:(UIColor *)titleBackgroundColor
         countDownTitleBackgroundColor:(UIColor *)countDownTitleBackgroundColor
                            completion:(void (^)(void))completion;

- (void)scheduledTimerWithTimeInterval:(NSInteger)seconds
                                 title:(NSString *)title
                        countDownTitle:(NSString *)subTitle
                  titleBackgroundColor:(UIColor *)titleBackgroundColor
         countDownTitleBackgroundColor:(UIColor *)countDownTitleBackgroundColor;

@end

NS_ASSUME_NONNULL_END
