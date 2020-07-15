//
//  AppConst.h
//  Pods
//
//  Created by 徐琰璋 on 2018/11/14.
//

#ifndef AppConst_h
#define AppConst_h

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
#define LyTrim(C) [C stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]

#ifdef DEBUG // 开发
#define Log(format, ...) NSLog((@"[LINE: %d]%s: " format), __LINE__, __PRETTY_FUNCTION__, ## __VA_ARGS__)
#else // 发布
#define Log(format, ...)
#endif

//app版本号
#define APPVER          [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

//设备系统版本号
#define SYSTEM_VERSION  [UIDevice currentDevice].systemVersion

//判断是否是ipad
#define  isiPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
//判断iPhone4系列
#define isIPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && ! isiPad : NO)
//判断iPhone5系列
#define isIPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && ! isiPad : NO)
//判断iPhone6 6s 7系列
#define isIPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && ! isiPad : NO)
//判断iPhone6p 6sp 7p系列
#define isIPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && ! isiPad : NO)
//判断iPhoneX，Xs（iPhoneX，iPhoneXs）
#define IS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && ! isiPad : NO)
//判断iPhoneXr
#define IS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && ! isiPad : NO)
//判断iPhoneXsMax
#define IS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size)&& ! isiPad : NO)

//判断iPhoneX所有系列
#define IS_IPhoneX_All (IS_IPHONE_X || IS_IPHONE_Xr || IS_IPHONE_Xs_Max)
#define k_Height_NavContentBar 44.0f
#define k_Height_StatusBar (IS_IPhoneX_All? 44.0 : 20.0)
#define k_Height_NavBar (IS_IPhoneX_All ? 88.0 : 64.0)
#define k_Height_TabBar (IS_IPhoneX_All ? 83.0 : 49.0)

#define IS_IOS_10               floorf([[UIDevice currentDevice].systemVersion floatValue]) ==10.0 ? 1 : 0
#define IS_IOS_10_OR_LETTER     (floorf([[UIDevice currentDevice].systemVersion floatValue]) >= 10.0)
#define IS_IOS_11_OR_LETTER     (floorf([[UIDevice currentDevice].systemVersion floatValue]) >= 11.0)
#define IS_IOS_9_OR_LESS        (floorf([[UIDevice currentDevice].systemVersion floatValue]) < 10.0)
#define IS_IOS_8_OR_LESS        (floorf([[UIDevice currentDevice].systemVersion floatValue]) < 9.0)

//去掉字符串两端的空格及回车
#define TrimWarp(C)     [C stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet ]]
//根据屏幕适配尺寸 375：UI设计原型图的手机尺寸宽度
#define HeightScale(h)  (h*[UIScreen mainScreen].bounds.size.width/375.0)

#define MAIN_WINDOW     [UIApplication sharedApplication].keyWindow

#endif /* AppConst_h */
