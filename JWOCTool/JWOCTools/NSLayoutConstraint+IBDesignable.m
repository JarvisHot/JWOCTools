//
//  NSLayoutConstraint+IBDesignable.m
//  BoLaiApp
//
//  Created by jiang on 2018/8/27.
//  Copyright © 2018年 jarvis. All rights reserved.
//

#import "NSLayoutConstraint+IBDesignable.h"

#define  C_WIDTH(WIDTH) WIDTH * [UIScreen mainScreen].bounds.size.width/375.0

@implementation NSLayoutConstraint (IBDesignable)

-(void)setWidthScreen:(BOOL)widthScreen{
    if (widthScreen) {
        self.constant = C_WIDTH(self.constant);
    }else{
        self.constant = self.constant;
    }
}

-(BOOL)widthScreen{
    return self.widthScreen;
}

@end

