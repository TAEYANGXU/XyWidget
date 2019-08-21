//
//  NSString+_DES.m
//  LyFuturesTrading
//
//  Created by 徐琰璋 on 2018/10/29.
//  Copyright © 2018 上海览益信息科技有限公司. All rights reserved.
//

#import "NSString+DES.h"

@implementation NSString (DES)

////字符串加密
//+ (NSString*)encrypt:(NSData*)plainData withKey:(NSString*)key{
//
//    const void *vplainText;
//    size_t plainTextBufferSize;
//
//    plainTextBufferSize = [plainData length];
//    vplainText = (const void *)[plainData bytes];
//    CCCryptorStatus ccStatus;
//    uint8_t *bufferPtr = NULL;
//    size_t bufferPtrSize = 0;
//    size_t movedBytes = 0;
//
//    if (plainTextBufferSize%kCCBlockSize3DES==0) {
//        bufferPtrSize = plainTextBufferSize;
//    }
//    else{
//        bufferPtrSize = (plainTextBufferSize + kCCBlockSize3DES) & ~(kCCBlockSize3DES - 1);
//    }
//
//    NSMutableData *tempData = [[NSMutableData alloc] initWithData:plainData];
//    if (bufferPtrSize > [plainData length]) {
//        uint8_t keyByte[bufferPtrSize - [plainData length]];
//        for (int i = 0; i < bufferPtrSize - [plainData length]; i++) {
//            keyByte[i] = 0;
//        }
//        NSData *data1 = [[NSData alloc] initWithBytes:keyByte length:bufferPtrSize - [plainData length]];
//        [tempData appendData:data1];
//    }
//
//    bufferPtr = malloc( bufferPtrSize * sizeof(uint8_t));
//    memset((void *)bufferPtr, 0x0, bufferPtrSize);
//    // memset((void *) iv, 0x0, (size_t) sizeof(iv));
//
//    const void *vkey = (const void *)[key UTF8String];
//    ccStatus = CCCrypt(kCCEncrypt,
//                       kCCAlgorithm3DES,
//                       kCCOptionECBMode,
//                       vkey,
//                       kCCKeySize3DES,
//                       nil,
////                       vplainText,
//                       (const void *)[tempData bytes],
//                       bufferPtrSize,
//                       (void *)bufferPtr,
//                       bufferPtrSize,
//                       &movedBytes);
////    if (ccStatus == kCCSuccess) NSLog(@"SUCCESS");
//    NSData *myData = [NSData dataWithBytes:(const void *)bufferPtr length:(NSUInteger)movedBytes];
//    NSString *result = [GTMBase64 stringByEncodingData:myData];
//    return result;
//}
//
////字符串解密
//+ (NSData*)decrypt:(NSString*)plainText length:(long)len withKey:(NSString*)key{
//
//    const void *vplainText;
//    size_t plainTextBufferSize;
//    NSData *EncryptData = [GTMBase64 decodeData:[plainText dataUsingEncoding:NSUTF8StringEncoding]];
//    plainTextBufferSize = [EncryptData length];
//    vplainText = [EncryptData bytes];
//    CCCryptorStatus ccStatus;
//    uint8_t *bufferPtr = NULL;
//    size_t bufferPtrSize = 0;
//    size_t movedBytes = 0;
//
//    bufferPtrSize = (plainTextBufferSize + kCCBlockSize3DES) & ~(kCCBlockSize3DES - 1);
//    if (plainTextBufferSize%kCCBlockSize3DES==0) {
//        bufferPtrSize = plainTextBufferSize;
//    }
//    bufferPtr = malloc( bufferPtrSize * sizeof(uint8_t));
//    memset((void *)bufferPtr, 0x0, bufferPtrSize);
//    // memset((void *) iv, 0x0, (size_t) sizeof(iv));
//    const void *vkey = (const void *)[key UTF8String];
//    ccStatus = CCCrypt(kCCDecrypt,
//                       kCCAlgorithm3DES,
//                       kCCOptionECBMode,
//                       vkey,
//                       kCCKeySize3DES,
//                       nil,
//                       vplainText,
//                       plainTextBufferSize,
//                       (void *)bufferPtr,
//                       bufferPtrSize,
//                       &movedBytes);
//    //if (ccStatus == kCCSuccess) NSLog(@"SUCCESS");
//    NSData *pbData = [NSData dataWithBytes:(const void *)bufferPtr length:(NSUInteger)len];
//    return pbData;
//}

//字符串解密
+ (NSData*)decrypt:(NSData *)EncryptData length:(long)len withKey:(NSString*)key{
    
    const void *vplainText;
    size_t plainTextBufferSize;
    plainTextBufferSize = [EncryptData length];
    vplainText = [EncryptData bytes];
    CCCryptorStatus ccStatus;
    uint8_t *bufferPtr = NULL;
    size_t bufferPtrSize = 0;
    size_t movedBytes = 0;
    
    bufferPtrSize = (plainTextBufferSize + kCCBlockSize3DES) & ~(kCCBlockSize3DES - 1);
    if (plainTextBufferSize%kCCBlockSize3DES==0) {
        bufferPtrSize = plainTextBufferSize;
    }
    bufferPtr = malloc( bufferPtrSize * sizeof(uint8_t));
    memset((void *)bufferPtr, 0x0, bufferPtrSize);
    // memset((void *) iv, 0x0, (size_t) sizeof(iv));
    const void *vkey = (const void *)[key UTF8String];
    ccStatus = CCCrypt(kCCDecrypt,
                       kCCAlgorithm3DES,
                       kCCOptionECBMode,
                       vkey,
                       kCCKeySize3DES,
                       nil,
                       vplainText,
                       plainTextBufferSize,
                       (void *)bufferPtr,
                       bufferPtrSize,
                       &movedBytes);
    //if (ccStatus == kCCSuccess) NSLog(@"SUCCESS");
    NSData *pbData = [NSData dataWithBytes:(const void *)bufferPtr length:(NSUInteger)len];
    return pbData;
}

//字符串加密
+ (NSData *)encrypt:(NSData*)plainData withKey:(NSString*)key{
    
    const void *vplainText;
    size_t plainTextBufferSize;
    
    plainTextBufferSize = [plainData length];
    vplainText = (const void *)[plainData bytes];
    CCCryptorStatus ccStatus;
    uint8_t *bufferPtr = NULL;
    size_t bufferPtrSize = 0;
    size_t movedBytes = 0;
    
    if (plainTextBufferSize%kCCBlockSize3DES==0) {
        bufferPtrSize = plainTextBufferSize;
    }
    else{
        bufferPtrSize = (plainTextBufferSize + kCCBlockSize3DES) & ~(kCCBlockSize3DES - 1);
    }
    
    NSMutableData *tempData = [[NSMutableData alloc] initWithData:plainData];
    if (bufferPtrSize > [plainData length]) {
        uint8_t keyByte[bufferPtrSize - [plainData length]];
        for (int i = 0; i < bufferPtrSize - [plainData length]; i++) {
            keyByte[i] = 0;
        }
        NSData *data1 = [[NSData alloc] initWithBytes:keyByte length:bufferPtrSize - [plainData length]];
        [tempData appendData:data1];
    }
    
    bufferPtr = malloc( bufferPtrSize * sizeof(uint8_t));
    memset((void *)bufferPtr, 0x0, bufferPtrSize);
    // memset((void *) iv, 0x0, (size_t) sizeof(iv));
    
    const void *vkey = (const void *)[key UTF8String];
    ccStatus = CCCrypt(kCCEncrypt,
                       kCCAlgorithm3DES,
                       kCCOptionECBMode,
                       vkey,
                       kCCKeySize3DES,
                       nil,
                       //                       vplainText,
                       (const void *)[tempData bytes],
                       bufferPtrSize,
                       (void *)bufferPtr,
                       bufferPtrSize,
                       &movedBytes);
    //    if (ccStatus == kCCSuccess) NSLog(@"SUCCESS");
    NSData *myData = [NSData dataWithBytes:(const void *)bufferPtr length:(NSUInteger)movedBytes];
    return myData;
}

@end
