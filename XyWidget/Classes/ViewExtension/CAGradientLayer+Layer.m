//
//  CAGradientLayer+Layer.m
//  LyCompassApp
//
//  Created by 徐琰璋 on 2018/8/13.
//  Copyright © 2018年 上海览益信息科技有限公司. All rights reserved.
//

#import "CAGradientLayer+Layer.h"

@implementation CAGradientLayer (Layer)

+(CAGradientLayer *) cAGradientLayerWithFrame:(CGRect)frame startColor:(UIColor *)startColor endColor:(UIColor *)endColor startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint{
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;  // 设置显示的frame
    gradientLayer.colors = @[(id)startColor.CGColor,(id)endColor.CGColor];  // 设置渐变颜色
    gradientLayer.startPoint = startPoint;
    gradientLayer.endPoint = endPoint;
    return gradientLayer;
}

@end
