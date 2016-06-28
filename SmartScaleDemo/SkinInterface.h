//
//  SkinInterface.h
//  SmartScaleDemo
//
//  Created by hzw on 16/6/28.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#ifndef SkinInterface_h
#define SkinInterface_h

//程序通用字体及高度
#define HXFont(fontSize)                 [UIFont systemFontOfSize:SkinGetFontSize(fontSize)]//字体
#define HXFont_ListTitle                 [UIFont systemFontOfSize:SkinGetFontSize(15)]//列表标题字体
#define HXFont_ListContent               [UIFont systemFontOfSize:SkinGetFontSize(13)]//列表内容，简介字体
#define HXFont_DetailTitle               [UIFont systemFontOfSize:SkinGetFontSize(18)]//详情-标题字体
#define HXFont_DetailContent             [UIFont systemFontOfSize:SkinGetFontSize(14)]//详情-内容字体
#define HXFont_TimeAndAuthor             [UIFont systemFontOfSize:SkinGetFontSize(10)]//作者，时间字体
#define HXFont_TopImage                  [UIFont systemFontOfSize:SkinGetFontSize(12)]//上图下文型 文字字体
#define HXFont_Exchange                  [UIFont systemFontOfSize:SkinGetFontSize(12)]//首页换一换
#define HXFont_LeftImage                 [UIFont systemFontOfSize:SkinGetFontSize(16)]//带左图标文字字体
#define HXFont_SectionHeader             [UIFont systemFontOfSize:SkinGetFontSize(14)]//表格SectionHeader字体
#define HXFont_TypeTab                   [UIFont systemFontOfSize:SkinGetFontSize(15)]//类别tab标题字体
#define HXFontSize_TypeTab               SkinGetFontSize(15)//类别tab标题字体大小
#define HXHeight_TypeTab                 SkinScaleValue(44)//类别tab高度
#define HXHeight_TableViewCell           SkinScaleValue(44)//表格高度（单行文字）
#define HXHeight_Button                  SkinScaleValue(40)//橙色按钮高度
#define HXHeight_SectionHeader           SkinScaleValue(35)//表格SectionHeader高度（带文字）
#define HXHeight_Separator               SkinScaleValue(15)//分隔条高度
#define HXFontSize_Html                  SkinGetFontSize(16)//html字体大小





#endif /* SkinInterface_h */
