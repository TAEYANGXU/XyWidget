//
//  NSMutableAttributedString+Text.m
//  LyCompassApp
//
//  Created by 徐琰璋 on 16/8/2.
//  Copyright © 2016年 上海览益信息科技有限公司. All rights reserved.
//

#import "NSMutableAttributedString+Text.h"
#import <YYText/YYText.h>

@implementation NSMutableAttributedString (Text)

+(nullable NSMutableAttributedString *) setTextAttribute:(nullable NSString *)content lineSpacing:(CGFloat)lineSpacing paragraphSpacing:(CGFloat)paragraphSpacing attributes:(nullable NSDictionary<NSString *, id> *)attrs{

    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    
    if (lineSpacing > 0) {
        [style setLineSpacing:lineSpacing];
    }
    if (paragraphSpacing > 0) {
        [style setParagraphSpacing:paragraphSpacing];
    }
    
    NSMutableDictionary *attribs = [[NSMutableDictionary alloc] initWithDictionary:attrs];
    [attribs setValue:style forKey:NSParagraphStyleAttributeName];
    
    NSMutableAttributedString *attributedText =[[NSMutableAttributedString alloc] initWithString:content != nil ? content : @"" attributes:attribs];
    
    return attributedText;
}


+ (NSMutableAttributedString *)attributedStringWithHTMLString:(NSString *)htmlString lineSpacing:(CGFloat)lineSpacing
{
    
    NSDictionary *options = @{ NSDocumentTypeDocumentAttribute : NSHTMLTextDocumentType,
                               NSCharacterEncodingDocumentAttribute :@(NSUTF8StringEncoding)};
    NSData *data = [htmlString dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithData:data options:options documentAttributes:NULL error:nil];
    attributedString.yy_lineSpacing = lineSpacing;
    return attributedString;
}

@end
