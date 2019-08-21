//
//  NSString+_DES.h
//  LyFuturesTrading
//
//  Created by 徐琰璋 on 2018/10/29.
//  Copyright © 2018 上海览益信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
#import <Security/Security.h>
#import "GTMBase64.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DES)

+ (NSData *)encrypt:(NSData*)plainData withKey:(NSString*)key;

+ (NSData*)decrypt:(NSData *)EncryptData length:(long)len withKey:(NSString*)key;

@end

NS_ASSUME_NONNULL_END
