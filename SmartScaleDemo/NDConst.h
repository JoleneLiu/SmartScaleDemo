//
//  NDConst.h
//  SmartScaleDemo
//
//  Created by hzw on 16/6/28.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#ifndef NDConst_h
#define NDConst_h


// skin
#define SkinScaleValue(A)  ([PublicAction scaleForValue:A])
#define SkinScaleHeight(A) ([PublicAction scaleRectWithRect:A])
#define SkinScaleSize(A)   ([PublicAction scaleSizeWithRect:A])
#define SkinScaleRect(A)   ([PublicAction scaleRectWithRect:A])
#define SkinGetFontSize(A) ([PublicAction scaleFontWithValue:A])
#define SkinBigImagePro(A) ([PublicAction imageWithPath:A ofType:nil])

#endif /* NDConst_h */
