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
//		File Name:		NSUserDefaults+Assist.m
//		Product Name:	LyFuturesTrading
//		Author:			xuyanzhang@上海览益信息科技有限公司
//		Swift Version:	5.0
//		Created Date:	2019/4/2 5:17 PM
//		
//		Copyright © 2019 上海览益信息科技有限公司.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import "NSUserDefaults+Assist.h"

@implementation NSUserDefaults (Assist)

+ (id)valueWithKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    id data = [userDefaults objectForKey:key];
    return data;
}

+ (void)saveValue:(id) value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:value forKey:key];
    [userDefaults synchronize];
}

+ (void)removeValueWithKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:key];
    [userDefaults synchronize];
}

@end
