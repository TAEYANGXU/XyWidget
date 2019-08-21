//
//  UIView+DropShadow.h
//  LyFuturesTrading
//
//  Created by 徐琰璋 on 2018/12/19.
//  Copyright © 2018 上海览益信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (DropShadow)

- (void)dropShadowWithOffset:(CGSize)offset
                      radius:(CGFloat)radius
                       color:(UIColor *)color
                     opacity:(CGFloat)opacity;

@end

NS_ASSUME_NONNULL_END
