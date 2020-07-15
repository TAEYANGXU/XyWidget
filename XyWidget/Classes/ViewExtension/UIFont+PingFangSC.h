//
//  UIFont+PingFangSC.h
//  LyCompassForum
//
//  Created by apple on 2019/7/8.
//  Copyright © 2019 mlj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppConst.h"
#import "FontConst.h"
#import "RectConst.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (PingFangSC)

+(UIFont *) PingFangSCLight:(float)fontSize;
+(UIFont *) PingFangSCBold:(float)fontSize;
+(UIFont *) PingFangSCRegular:(float)fontSize;
+(UIFont *) PingFangSCMedium:(float)fontSize;

@end

NS_ASSUME_NONNULL_END
