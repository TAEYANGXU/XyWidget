//
//  NSString+Sha1.h
//  QH_CRM_IM
//
//  Created by 徐琰璋 on 2018/9/6.
//  Copyright © 2018年 上海览益信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Sha1)

//sha1加密方式
+ (NSString *)sha1:(NSString *)text;

//macsha1加密方式
+ (NSString *)hmacSha1:(NSString*)key text:(NSString*)text;

@end
