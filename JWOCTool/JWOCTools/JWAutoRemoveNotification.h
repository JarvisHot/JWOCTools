//
//  JWAutoRemoveNotification.h
//  DrillingLoveLife
//
//  Created by jiang on 2019/6/14.
//  Copyright © 2019 wwj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JWAutoRemoveNotification : NSObject

+ (void)addObserver:(id)notificationObserver selector:(SEL)notificationSelector name:(NSString *)notificationName object:(nullable id)notificationSender;
@end

NS_ASSUME_NONNULL_END
