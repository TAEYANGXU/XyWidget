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
//		File Name:		NSString+Chinese.h
//		Product Name:	LyFuturesTrading
//		Author:			xuyanzhang@上海览益信息科技有限公司
//		Swift Version:	5.0
//		Created Date:	2019/4/17 3:06 PM
//		
//		Copyright © 2019 上海览益信息科技有限公司.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Chinese)

//判断是否是纯汉字
- (BOOL)isChinese;

//判断是否含有汉字
- (BOOL)includeChinese;

@end

NS_ASSUME_NONNULL_END
