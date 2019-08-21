//
//  UIViewController+HideTabBar.h
//  LyCompassApp
//
//  Created by 徐琰璋 on 2016/11/21.
//  Copyright © 2016年 上海览益信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

-(void) pushViewController:(UIViewController *)controller animated:(BOOL)animated;

-(void) pushViewController:(UIViewController *)controller animated:(BOOL)animated hideTabBar:(BOOL)hideTabBar;

@end
