//
//                         __   _,--="=--,_   __
//                        /  \."    .-.    "./  \
//                       /  ,/  _   : :   _  \/` \
//                       \  `| /o\  :_:  /o\ |\__/
//                        `-'| :="~` _ `~"=: |
//                           \`     (_)     `/
//                    .-"-.   \      |      /   .-"-.
//.------------------{     }--|  /,.-'-.,\  |--{     }-----------------.
// )                 (_)_)_)  \_/`~-===-~`\_/  (_(_(_)                (
//                                                                     
//		File Name:		UIView+Frame.m
//		Product Name:	Pods-ToolWidget_Example
//		Author:			xuyanzhang@___ORGANIZATIONNAME___
//		Swift Version:	4.0
//		Created Date:	2018/12/27 9:57 AM
//		
//		Copyright © 2018 ___ORGANIZATIONNAME___.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import "UIView+Frame.h"

@implementation UIView (Frame)
/**
 设置新的Origin.x
 @param   x  新设置的值
 */
- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

/**
 @param   y   设置新的Origin.Y
 */
- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

/**
 @return   y   返回一个Origin.y
 */
- (CGFloat)y
{
    return self.frame.origin.y;
}

/**
 @param   origin   设置新的Origin
 */
- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

/**
 @return   contents   返回一个Origin
 */
- (CGPoint)origin
{
    return self.frame.origin;
}

/**
 @param   width   设置新的Size.Width
 */
- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

/**
 @return   width   返回一个Size.Width
 */
- (CGFloat)width
{
    return self.frame.size.width;
}

/**
 @param   height   设置新的Size.Height
 */
- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

/**
 @return   height   返回一个Size.Height
 */
- (CGFloat)height
{
    return self.frame.size.height;
}

/**
 @param   size   设置新的Size
 */
- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

/**
 @return   size   返回一个Size
 */
- (CGSize)size
{
    return self.frame.size;
}
/**
 @param   centerX   设置新的centerX
 */
- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
/**
 @return centerX
 */
- (CGFloat)centerX
{
    return self.center.x;
}
/**
 @param   centerY   设置新的centerY
 */
- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}
/**
 @return centerY
 */
- (CGFloat)centerY
{
    return self.center.y;
}

@end

@implementation UIScrollView (Frame)
/**
 @param   offsetX   设置新的offsetX
 */
- (void)setOffsetX:(CGFloat)offsetX
{
    CGPoint offset = self.contentOffset;
    offset.x = offsetX;
    self.contentOffset = offset;
}
/**
 @return offsetX
 */
- (CGFloat)offsetX
{
    return self.contentOffset.x;
}
/**
 @param   offsetY   设置新的offsetY
 */
- (void)setOffsetY:(CGFloat)offsetY
{
    CGPoint offset = self.contentOffset;
    offset.y = offsetY;
    self.contentOffset = offset;
}
/**
 @return offsetY
 */
- (CGFloat)offsetY
{
    return self.contentOffset.y;
}
/**
 @param   contentWidth   设置新的contentWidth
 */
- (void)setContentWidth:(CGFloat)contentWidth
{
    CGSize contentSize = self.contentSize;
    contentSize.width = contentWidth;
    self.contentSize = contentSize;
}
/**
 @return contentWidth
 */
- (CGFloat)contentWidth
{
    return self.contentSize.width;
}
/**
 @param   contentHeight   设置新的contentHeight
 */
- (void)setContentHeight:(CGFloat)contentHeight
{
    CGSize contentSize = self.contentSize;
    contentSize.height = contentHeight;
    self.contentSize = contentSize;
}
/**
 @return contentHeight
 */
- (CGFloat)contentHeight
{
    return self.contentSize.height;
}
@end
