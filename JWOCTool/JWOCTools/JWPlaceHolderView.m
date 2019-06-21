//
//  JWPlaceHolderView.m
//  JWOCTools
//
//  Created by jiang on 2014/6/21.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWPlaceHolderView.h"
#import "UIView+Frame.h"
#import "UIView+BorderLine.h"

#define COLOR(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

@interface  JWPlaceHolderView ()

@property(nonatomic, copy) NSString *imgStr;

@property(nonatomic, copy) NSString *title;

@property(nonatomic, assign) BOOL show;

@property(nonatomic, strong) UIColor * color;

@end

@implementation JWPlaceHolderView

-(instancetype)initWithImage:(NSString*)imgStr title:(NSString*)title showTryButton:(BOOL)show btnColor:(UIColor *)color
{
    if (self=[super init]) {
        _imgStr = imgStr;
        _title = title;
        _show = show;
        _color = color;
        [self setUI];
    }
    return self;
}
-(void)setUI{
    UIImageView *imgV=[[UIImageView alloc]initWithImage:[UIImage imageNamed:_imgStr]];
    [self addSubview:imgV];
    self.backgroundColor=[UIColor whiteColor];
    imgV.frame = CGRectMake(0, 0, 200, 200);
    imgV.center = CGPointMake(self.centerX, self.centerY-30);
    UILabel *titleLabel=[[UILabel alloc]init];
    titleLabel.text=_title;
    titleLabel.font=[UIFont systemFontOfSize:14];
    titleLabel.textColor=COLOR(181, 181, 180, 1);
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:titleLabel];
//    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(imgV.mas_bottom).with.offset(20);
//        make.height.mas_equalTo(20);
//        make.centerX.equalTo(self);
//    }];
    titleLabel.frame = CGRectMake(0, imgV.bottom+20, self.width, 20);
    if (_show) {
        UIButton *retryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:retryBtn];
        [retryBtn setTitleColor:_color forState:UIControlStateNormal];
        retryBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [retryBtn setTitle:@"点击重试" forState:UIControlStateNormal];
        retryBtn.layer.cornerRadius = 12.5;
        [retryBtn borderForColor:_color borderWidth:1 borderType:UIBorderSideTypeAll];
        retryBtn.frame = CGRectMake(self.centerX-50, titleLabel.bottom+20, 100, 25);
        [retryBtn addTarget:self action:@selector(retryClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}
-(void)retryClick:(UIButton*)sender
{
    if (self.block) {
        self.block();
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
