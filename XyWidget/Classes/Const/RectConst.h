//
//  RectConst.h
//  Pods
//
//  Created by 徐琰璋 on 2018/11/14.
//

#ifndef RectConst_h
#define RectConst_h

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds

#define IS_IPAD                 (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE               (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA               ([[UIScreen mainScreen] scale] >= 2.0)
#define IS_IPHONE_4_OR_LESS     (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5S_OR_LESS    (IS_IPHONE && SCREEN_WIDTH == 320.0)
#define IS_IPHONE_5             (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6             (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P            (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)
#define IS_IphoneX              (SCREEN_HEIGHT == 812.0)

#define X(v) (v).frame.origin.x
#define Y(v) (v).frame.origin.y
#define WIDTH(v) (v).frame.size.width
#define HEIGHT(v) (v).frame.size.height

#define MinX(v) CGRectGetMinX((v).frame)
#define MinY(v) CGRectGetMinY((v).frame)
#define MidX(v) CGRectGetMidX((v).frame)
#define MidY(v) CGRectGetMidY((v).frame)
#define MaxX(v) CGRectGetMaxX((v).frame)
#define MaxY(v) CGRectGetMaxY((v).frame)

/// 设计规范
#define TABBAR_HEIGHT 49
#define NAVBAR_HEIGHT (IS_IphoneX ? 88 : 64)
#define SAFE_AREA (SCREEN_HEIGHT - NAVBAR_HEIGHT)

#endif /* RectConst_h */
