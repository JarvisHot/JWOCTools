//
//  UIViewController+JWCategory.m
//  UnderWaterRobert
//
//  Created by jiang on 2019/11/26.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "UIViewController+JWCategory.h"


@implementation UIViewController (JWCategory)

+ (UIViewController*)currentViewController {
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    UIViewController *topViewController = [window rootViewController];
    while (true) {
        if (topViewController.presentedViewController) {
            topViewController = topViewController.presentedViewController;
        } else if ([topViewController isKindOfClass:[UINavigationController class]] && [(UINavigationController*)topViewController topViewController]) {
            topViewController = [(UINavigationController *)topViewController topViewController];
        } else if ([topViewController isKindOfClass:[UITabBarController class]]) {
            UITabBarController *tab = (UITabBarController *)topViewController;
            topViewController = tab.selectedViewController;
        } else {
            break;
        }
    }
    return topViewController;
}
@end
