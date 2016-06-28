//
//  PublicAction.m
//  SmartScaleDemo
//
//  Created by hzw on 16/6/27.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#import "PublicAction.h"
#import "SmartScaleManager.h"

@implementation PublicAction
+ (CGFloat)scaleForValue:(CGFloat)value
{
    return [[SmartScaleManager shareSmartScaleManager] scaleForValue:value];
}

+ (CGFloat)scaleHeightWithRect:(CGRect)rect
{
    return [[SmartScaleManager shareSmartScaleManager] scaleForValue:CGRectGetHeight(rect)];
}

+ (CGRect)scaleSizeWithRect:(CGRect)rect
{
    rect.size = [[SmartScaleManager shareSmartScaleManager] scaleCGSize:rect.size];
    return rect;
}

+ (CGRect)scaleRectWithRect:(CGRect)rect
{
    return [[SmartScaleManager shareSmartScaleManager] scaleCGRect:rect];
}

+ (CGFloat)scaleFontWithValue:(CGFloat)value
{
    return value + [[SmartScaleManager shareSmartScaleManager] fontSizeOffset];
}

#define CheckStr(A) ([A isKindOfClass:[NSNull class]] || !A || [A length]<1)
+ (UIImage *)imageWithPath:(NSString *)path ofType:(NSString *)type
{
    if (!CheckStr(type))
        return [[SmartScaleManager shareSmartScaleManager] imageWithPath:path ofType:type];
    
    UIImage *image = [[SmartScaleManager shareSmartScaleManager] imageWithPath:path ofType:@"jpg"];
    if (!image)
        image =[[SmartScaleManager shareSmartScaleManager] imageWithPath:path ofType:@"png"];
    
    return image;
}
@end
