//
//  AppConst.h
//  Pods
//
//  Created by 徐琰璋 on 2018/11/14.
//

#ifndef AppConst_h
#define AppConst_h

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;

#ifdef DEBUG // 开发
#define Log(format, ...) NSLog((@"[LINE: %d]%s: " format), __LINE__, __PRETTY_FUNCTION__, ## __VA_ARGS__)
#else // 发布
#define Log(format, ...)
#endif

/**
 *  app版本号
 */
#define APPVER  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#endif /* AppConst_h */
