//
//  NSMutableAttributedString+Text.h
//  LyCompassApp
//
//  Created by 徐琰璋 on 16/8/2.
//  Copyright © 2016年 上海览益信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (Text)

+(nullable NSMutableAttributedString *) setTextAttribute:(nullable NSString *)content lineSpacing:(CGFloat)lineSpacing paragraphSpacing:(CGFloat)paragraphSpacing attributes:(nullable NSDictionary<NSString *, id> *)attrs;

+ (nullable NSMutableAttributedString *)attributedStringWithHTMLString:(nullable NSString *)htmlString lineSpacing:(CGFloat)lineSpacing;

@end
