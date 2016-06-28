//
//  SmartScaleManager.h
//  SmartScaleDemo
//
//  Created by hzw on 16/6/27.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
/*
 *  适配管理器
 */
@interface SmartScaleManager : NSObject
{
    CGRect  windowRect;
    CGFloat windowWidth;
    CGFloat windowHeight;
    CGFloat scaleValue;
    CGFloat fontSizeOffset;
}

@property (nonatomic, assign) CGRect  windowRect;
@property (nonatomic, assign) CGFloat windowWidth;
@property (nonatomic, assign) CGFloat windowHeight;
@property (nonatomic, assign) CGFloat scaleValue;
@property (nonatomic, assign) CGFloat fontSizeOffset;

- (CGFloat)scaleForValue:(CGFloat)value;
- (CGSize)scaleCGSize:(CGSize)size;
- (CGPoint)scaleCGPoint:(CGPoint)point;
- (CGRect)scaleCGRect:(CGRect)rect;
- (UIImage *)imageWithPath:(NSString *)path ofType:(NSString *)type;
+ (SmartScaleManager *)shareSmartScaleManager;
@end
