//
//  JWPlaceHolderView.h
//  JWOCTools
//
//  Created by jiang on 2014/6/21.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^retryBlock)();

@interface JWPlaceHolderView : UIView

@property(nonatomic,copy)retryBlock block;

-(instancetype)initWithImage:(NSString*)imgStr title:(NSString*)title showTryButton:(BOOL)show btnColor:(UIColor *)color;

@end


