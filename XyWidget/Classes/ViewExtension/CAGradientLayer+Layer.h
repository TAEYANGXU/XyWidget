//
//  CAGradientLayer+Layer.h
//  LyCompassApp
//
//  Created by 徐琰璋 on 2018/8/13.
//  Copyright © 2018年 上海览益信息科技有限公司. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CAGradientLayer (Layer)

+(CAGradientLayer *) cAGradientLayerWithFrame:(CGRect)frame startColor:(UIColor *)startColor endColor:(UIColor *)endColor startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

@end
