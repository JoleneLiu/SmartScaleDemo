//
//  PublicAction.h
//  SmartScaleDemo
//
//  Created by hzw on 16/6/27.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
// 工程相关类方法
@interface PublicAction : NSObject

// 包装屏幕适配相关方法
+ (CGFloat)scaleForValue:(CGFloat)value;
+ (CGFloat)scaleHeightWithRect:(CGRect)rect;
+ (CGRect)scaleSizeWithRect:(CGRect)rect;
+ (CGRect)scaleRectWithRect:(CGRect)rect;
+ (CGFloat)scaleFontWithValue:(CGFloat)value;
+ (UIImage *)imageWithPath:(NSString *)path ofType:(NSString *)type;
@end
