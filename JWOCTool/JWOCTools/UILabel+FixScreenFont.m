//
//  UILabel+FixScreenFont.m
//  yuzhilai
//
//  Created by jiang on 2018/11/8.
//

#import "UILabel+FixScreenFont.h"
#define  C_WIDTH(WIDTH) WIDTH * [UIScreen mainScreen].bounds.size.width/375.0
@implementation UILabel (FixScreenFont)
- (void)setFixWidthScreenFont:(BOOL)fixWidthScreenFont{
    
    if (fixWidthScreenFont ) {
        self.font = [UIFont fontWithName:self.font.fontName size:C_WIDTH(self.font.pointSize)];
        
        
    }else{
        self.font = self.font;
    }
}

- (BOOL )fixWidthScreenFont{
    return self.fixWidthScreenFont;
}


@end
