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
//		File Name:		NSUserDefaults+Assist.h
//		Product Name:	LyFuturesTrading
//		Author:			xuyanzhang@上海览益信息科技有限公司
//		Swift Version:	5.0
//		Created Date:	2019/4/2 5:17 PM
//		
//		Copyright © 2019 上海览益信息科技有限公司.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (Assist)

+ (id)valueWithKey:(NSString *)key;

+ (void)saveValue:(id) value forKey:(NSString *)key;

+ (void)removeValueWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
