//
//  JWToollsDefine.h
//  JWOCTools
//
//  Created by jiang on 2020/7/16.
//  Copyright © 2020 jarvis. All rights reserved.
//

#ifndef JWToollsDefine_h
#define JWToollsDefine_h

#define JWDictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys.count == 0)
#define JWNumIsEmpty(num) (num == nil ||[num isEqualToNumber:@0] ? YES : NO )
#define JWStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil ||str == NULL || [str length] < 1 ? YES : NO )
//property属性快速声明

#define JWPropertyString(s) @property(nonatomic,copy)NSString * s

#define JWPropertyNSInteger(s) @property(nonatomic,assign)NSInteger s

#define JWPropertyFloat(s) @property(nonatomic,assign)float s

#define JWPropertyLongLong(s) @property(nonatomic,assign)long long s

#define JWPropertyNSDictionary(s) @property(nonatomic,strong)NSDictionary * s

#define JWPropertyNSArray(s) @property(nonatomic,strong)NSArray * s

#define JWPropertyNSMutableArray(s) @property(nonatomic,strong)NSMutableArray * s

#endif /* JWToollsDefine_h */
