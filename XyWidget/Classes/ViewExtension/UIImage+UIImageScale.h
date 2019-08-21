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
//		File Name:		UIImage+UIImageScale.h
//		Product Name:	LyCompassApp
//		Author:			xuyanzhang@上海览益信息科技有限公司
//		Swift Version:	4.0
//		Created Date:	2019/2/21 5:20 PM
//		
//		Copyright © 2019 上海览益信息科技有限公司.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (UIImageScale)

-(UIImage*)getSubImage:(CGRect)rect;

-(UIImage*)scaleToSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
