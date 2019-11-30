//
//  ViewController.m
//  JWOCTools
//
//  Created by jiang on 2019/6/14.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "ViewController.h"
#import "JWOCTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)click:(UIButton *)sender {
    [sender scheduledTimerWithTimeInterval:60 title:@"获取" countDownTitle:@"S" titleTextColor:[UIColor redColor] countDownTitleTextColor:[UIColor colorWithHexString:@"#999999"]];
}


@end
