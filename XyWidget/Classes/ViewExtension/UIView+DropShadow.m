//
//  UIView+DropShadow.m
//  LyFuturesTrading
//
//  Created by 徐琰璋 on 2018/12/19.
//  Copyright © 2018 上海览益信息科技有限公司. All rights reserved.
//

#import "UIView+DropShadow.h"

@implementation UIView (DropShadow)

- (void)dropShadowWithOffset:(CGSize)offset
                      radius:(CGFloat)radius
                       color:(UIColor *)color
                     opacity:(CGFloat)opacity {
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.bounds);
    self.layer.shadowPath = path;
    CGPathCloseSubpath(path);
    CGPathRelease(path);
    
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = radius;
    self.layer.shadowOpacity = opacity;
    
    self.clipsToBounds = NO;
}

@end
