//
//  UIViewController+CurrentController.h
//  LyCompassApp
//
//  Created by 徐琰璋 on 16/9/23.
//  Copyright © 2016年 上海览益信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (CurrentController)

/**
 *  获取当前正在显示的ViewController
 *
 *  @return 当前ViewController
 */
+ (UIViewController *) getCurrentController;

/**
 *  获取当前正在显示的ViewController
 *
 *  @return 当前ViewController
 */
+ (UIViewController *) currentController;

@end
