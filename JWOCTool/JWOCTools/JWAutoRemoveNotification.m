//
//  JWAutoRemoveNotification.m
//  DrillingLoveLife
//
//  Created by jiang on 2019/6/14.
//  Copyright © 2019 wwj. All rights reserved.
//

#import "JWAutoRemoveNotification.h"
#import <objc/runtime.h>
@interface JWAutoRemoveNotification ()

@property(nonatomic, unsafe_unretained) id notificationObserver;

@property(nonatomic, assign) id notificationSender;
@property(nonatomic, copy) NSString *notificaitonName;

@property(nonatomic, strong) id blockObserver;

@end

@implementation JWAutoRemoveNotification

+ (void)addObserver:(id)notificationObserver selector:(SEL)notificationSelector name:(NSString *)notificationName object:(nullable id)notificationSender {
    
    JWAutoRemoveNotification *removeNotification = [[JWAutoRemoveNotification alloc] init];
    removeNotification.notificationObserver = notificationObserver;
    removeNotification.notificaitonName = notificationName;
    removeNotification.notificationSender = notificationSender;
    
    objc_setAssociatedObject(notificationObserver, (__bridge const void*)(removeNotification), removeNotification, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [[NSNotificationCenter defaultCenter] addObserver:notificationObserver
                                             selector:notificationSelector
                                                 name:notificationName
                                               object:notificationSender];
}

- (void)dealloc {
    if (self.blockObserver) {
        [[NSNotificationCenter defaultCenter] removeObserver:self.blockObserver];
    } else  {
        [[NSNotificationCenter defaultCenter] removeObserver:self.notificationObserver
                                                        name:self.notificaitonName
                                                      object:self.notificationSender];
    }
}
@end
