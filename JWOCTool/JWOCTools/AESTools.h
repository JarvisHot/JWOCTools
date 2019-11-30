//
//  AESTools.h
//  cellInsets
//
//  Created by jiang on 2017/9/25.
//  Copyright © 2017年 jarvis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AESTools : NSObject
@property (nonatomic,copy) NSString * kInitVector;//秘钥，必须设置
+(instancetype)sharedInstance;
+ (NSString *)encryptAES:(NSString *)content key:(NSString *)key;
+ (NSString *)decryptAES:(NSString *)content key:(NSString *)key;
+ (NSString*) sha1:(NSString*)inputStr;//sha1加密
+(NSString *)randomStringWithLength:(NSInteger)len;//随机数
@end
