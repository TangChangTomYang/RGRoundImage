//
//  UIImage+clip.m
//  RGRoundImage
//
//  Created by yangrui on 2018/12/1.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "UIImage+clip.h"

@implementation UIImage (clip)

+(UIImage *)roundImageWithName:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name];
    if (image == nil) return nil;
    
    return  [image roundImage];
}

-(UIImage *)roundImage{
   
    //1. 开启图形上下文
    //The scale factor to apply to the bitmap. If you specify a value of 0.0, the scale factor is set to the scale factor of the device’s main screen.
    UIGraphicsBeginImageContextWithOptions(self.size,
                                           NO,
                                           0);// 0表示,scale 比例因素自动适应 @1x\@2x\@3x
    //2. 描述裁剪区域
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //3. 设置裁剪区域
    [path addClip];
    //4. 画图
    [self drawAtPoint:CGPointZero];
    //5. 取出图片
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    //6. 关闭上下文
    UIGraphicsEndImageContext();
    //[UIImagePNGRepresentation(img) writeToFile:@"/Users/yang/Desktop/aa.png" atomically:YES];

    return img;
}

@end
