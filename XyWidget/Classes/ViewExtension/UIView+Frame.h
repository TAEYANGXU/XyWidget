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
//		File Name:		UIView+Frame.h
//		Product Name:	Pods-ToolWidget_Example
//		Author:			xuyanzhang@___ORGANIZATIONNAME___
//		Swift Version:	4.0
//		Created Date:	2018/12/27 9:57 AM
//		
//		Copyright © 2018 ___ORGANIZATIONNAME___.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Frame)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@end

@interface UIScrollView (Frame)
@property (nonatomic,assign) CGFloat offsetX;
@property (nonatomic,assign) CGFloat offsetY;
@property (nonatomic,assign) CGFloat contentWidth;
@property (nonatomic,assign) CGFloat contentHeight;
@end

NS_ASSUME_NONNULL_END
