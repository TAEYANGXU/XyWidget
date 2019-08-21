//
//  UILabel+ChangeLineSpace.h
//  LyFutureApp
//
//  Created by 徐琰璋 on 2018/1/11.
//  Copyright © 2018年 上海览益信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ChangeLineSpace)

/**
 *  改变行间距
 */
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变行间距和段间距
 */
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(float)space WithParagraphSpacing:(float)paragraphSpace;

/**
 *  改变字间距
 */
+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变行间距和字间距
 */
+ (void)changeSpaceForLabel:(UILabel *)label withLineSpace:(float)lineSpace WordSpace:(float)wordSpace;

@end
