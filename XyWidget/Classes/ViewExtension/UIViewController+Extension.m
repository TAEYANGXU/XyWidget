//
//  UIViewController+HideTabBar.m
//  LyCompassApp
//
//  Created by 徐琰璋 on 2016/11/21.
//  Copyright © 2016年 上海览益信息科技有限公司. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)

-(void) pushViewController:(UIViewController *)controller animated:(BOOL)animated hideTabBar:(BOOL)hideTabBar
{
    if (hideTabBar) {
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:controller animated:animated];
        self.hidesBottomBarWhenPushed = NO;
    }else{
        [self.navigationController pushViewController:controller animated:animated];
    }
}

-(void) pushViewController:(UIViewController *)controller animated:(BOOL)animated
{
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:controller animated:animated];
}

@end
