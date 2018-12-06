//
//  UIImage+clip.h
//  RGRoundImage
//
//  Created by yangrui on 2018/12/1.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (clip)

/** 针对圆角图片的说明
1. 在iOS9 之前使用
 self.view.layer.cornerRadius = 5;
 self.view.layer.masksToBounds = YES;
 设置图片的圆角是由性能问题的, 用图片裁剪是没有系统性能问题
 参看博文 http://www.cocoachina.com/ios/20150803/12873.html
 
2. 在iOS9 之后,系统修复了这个bug 已经不存在之前的性能问题了
 */


-(UIImage *)roundImage;

+(UIImage *)roundImageWithName:(NSString *)name;
@end
