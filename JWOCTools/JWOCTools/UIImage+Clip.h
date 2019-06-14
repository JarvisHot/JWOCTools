//
//  UIImage+Clip.h
//  yuzhilai
//
//  Created by jiang on 2017/6/20.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Clip)
//将图片裁剪适应某一rect
+(UIImage *) imageCompressForRect:(UIImage *)sourceImage targetRect:(CGRect)rect;
//裁剪到某一尺寸
+(UIImage *) imageCompressForSize:(UIImage *)sourceImage targetSize:(CGSize)size;

+ (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)clipImage;
@end
