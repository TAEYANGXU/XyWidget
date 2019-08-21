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
//		File Name:		UIView+Additions.h
//		Product Name:	LyFuturesTrading
//		Author:			xuyanzhang@上海览益信息科技有限公司
//		Swift Version:	4.0
//		Created Date:	2019/1/10 2:17 PM
//		
//		Copyright © 2019 上海览益信息科技有限公司.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Additions)

/**
 *  根据第一响应者找到父视图
 *
 *  @return UIViewController
 */
-(UIViewController *)viewController;

@end

NS_ASSUME_NONNULL_END
