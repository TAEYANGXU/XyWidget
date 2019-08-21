//
//  NSString+Sha1.m
//  QH_CRM_IM
//
//  Created by 徐琰璋 on 2018/9/6.
//  Copyright © 2018年 上海览益信息科技有限公司. All rights reserved.
//

#import "NSString+Sha1.h"
#include <CommonCrypto/CommonDigest.h>
#include <CommonCrypto/CommonHMAC.h>

@implementation NSString (Sha1)

+ (NSString *) sha1:(NSString *)text
{
    //const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    //NSData *data = [NSData dataWithBytes:cstr length:input.length];
    
    NSData *data = [text dataUsingEncoding:NSUTF8StringEncoding];

    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i=0; i<CC_SHA1_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    return output;
}

+ (NSString *) hmacSha1:(NSString*)key text:(NSString*)text
{
    const char *cKey  = [key cStringUsingEncoding:NSUTF8StringEncoding];
    
    const char *cData = [text cStringUsingEncoding:NSUTF8StringEncoding];
    
    uint8_t cHMAC[CC_SHA1_DIGEST_LENGTH];
    
    CCHmac(kCCHmacAlgSHA1, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
    
    NSString *hash;
    
    NSMutableString * output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        
    [output appendFormat:@"%02x", cHMAC[i]];
    
    hash = output;
    
    return hash;
}
@end
