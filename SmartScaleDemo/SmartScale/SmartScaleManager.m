//
//  SmartScaleManager.m
//  SmartScaleDemo
//
//  Created by hzw on 16/6/27.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#import "SmartScaleManager.h"

#define DesignWidth  320
#define DesignHeight 568
#define CheckStr(A) ([A isKindOfClass:[NSNull class]] || !A || [A length]<1)

static SmartScaleManager *shareSmartScaleManager = nil;

@interface SmartScaleManager ()
{
    BOOL isIPHONE5;
}
@property (nonatomic, assign) CGFloat scaleRate;// 缩放比例  相对于iPhone5的屏幕宽度
@end

@implementation SmartScaleManager
@synthesize windowRect;
@synthesize windowWidth;
@synthesize windowHeight;
@synthesize scaleValue;
@synthesize fontSizeOffset;

- (instancetype) init
{
    return [super init];
}

- (void)initData
{
    windowRect   = [UIScreen mainScreen].bounds;
    windowWidth  = CGRectGetWidth(windowRect);
    windowHeight = CGRectGetHeight(windowRect);
    
    scaleValue   = [[UIScreen mainScreen] scale];
    isIPHONE5    = NO;
    
    if (windowWidth - DesignWidth < 0.001) {
        isIPHONE5 = YES;
        self.scaleRate = 1.0;
    }
    else
    {
        self.scaleRate = windowWidth/(DesignWidth * 1.0);
    }
    
    self.fontSizeOffset = 0.0;
    if (!isIPHONE5) {
        if (self.scaleRate < 1.172) {  // iphone6(s)
            fontSizeOffset = 1.0;
        }
        else if (self.scaleRate < 1.294) // iphone6p(s)
        {
            fontSizeOffset = 2.0;
        }
        else if(self.scaleRate < 100)
        {
            fontSizeOffset = 3.0;
        }
    }
}

- (CGFloat)scaleForValue:(CGFloat)value
{
    if (isIPHONE5) {
        return value;
    }
    return value*_scaleRate;
}

- (CGFloat)scaleValueForOther
{
    if (scaleValue == 2.0) {
        return 3.0;
    }
    
    return 2.0;
}

- (CGSize)scaleCGSize:(CGSize)size
{
    size.width  = [self scaleForValue:size.width];
    size.height = [self scaleForValue:size.height];
    
    return size;
}

- (CGPoint)scaleCGPoint:(CGPoint)point
{
    point.x = [self scaleForValue:point.x];
    point.y = [self scaleForValue:point.y];
    
    return point;
}

- (CGRect)scaleCGRect:(CGRect)rect
{
    rect.size   = [self scaleCGSize:rect.size];
    rect.origin = [self scaleCGPoint:rect.origin];
    
    return rect;
}

- (UIImage *)imageWithPath:(NSString *)path ofType:(NSString *)type
{
    if (CheckStr(path)) {
        return nil;
    }
    
    NSString *imageName = [NSString stringWithFormat:@"%@@%dx", path, (int)scaleValue];
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:imageName ofType:type];
    if (!CheckStr(imagePath)) {
        return [[UIImage alloc] initWithContentsOfFile:imagePath];
    }
    
    
    imageName = [NSString stringWithFormat:@"%@@%dx", path, (int)[self scaleValueForOther]];
    imagePath = [[NSBundle mainBundle] pathForResource:imageName ofType:type];
    if (!CheckStr(imagePath)) {
        return [[UIImage alloc] initWithContentsOfFile:imagePath];
    }
    
   
    imagePath = [[NSBundle mainBundle] pathForResource:path ofType:type];
    if (!CheckStr(imagePath)) {
        return [[UIImage alloc] initWithContentsOfFile:imagePath];
    }
    
    return nil;
}

+ (SmartScaleManager *)shareSmartScaleManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareSmartScaleManager = [[SmartScaleManager alloc] init];
        [shareSmartScaleManager initData];
    });
    
    return shareSmartScaleManager;
}
@end
