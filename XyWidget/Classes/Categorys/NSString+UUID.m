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
//		File Name:		NSString+UUID.m
//		Product Name:	LyFuturesTrading
//		Author:			xuyanzhang@上海览益信息科技有限公司
//		Swift Version:	4.0
//		Created Date:	2019/4/1 4:05 PM
//		
//		Copyright © 2019 上海览益信息科技有限公司.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import "NSString+UUID.h"
#import "KeyChainStore.h"
#import <AdSupport/AdSupport.h>
#import <sys/sysctl.h>
#import <sys/ioctl.h>
#import <net/if.h>
#import <net/if_dl.h>
#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include<unistd.h>

#define RANDOM(x) (rand()%x)
#define MAC_ADDR_LENGTH 12
#define FMT_MAC_ADDR_LEN (MAC_ADDR_LENGTH+5)
unsigned char HEXCHAR[16]={'0','1','2','3','4','5','6','7','8','9','A','B','C',
'D','E','F'};
unsigned char genMACAddr[MAC_ADDR_LENGTH];
unsigned char fmtMACAddr[FMT_MAC_ADDR_LEN]={'0','0',':','0','0',':','0','0',':',
'0','0',':','0','0',':','0','0'};

void formatMACAddr()
{
    unsigned short n=0;
    for(int i=0;i<MAC_ADDR_LENGTH;i++,n++)
    {
        if(fmtMACAddr[n]!=':')
        {
            fmtMACAddr[n]=genMACAddr[i];
        }else
        {
            n++;
            fmtMACAddr[n]=genMACAddr[i];
        }
    }
}

@implementation NSString (UUID)

+ (NSString *)macAddress
{
    unsigned short n=0;
    srand(getpid());
    for(int i=0;i<MAC_ADDR_LENGTH;i++)
    {
        n=RANDOM(16);
        genMACAddr[i] = HEXCHAR[n];
    }
    formatMACAddr();
    
    return [NSString stringWithFormat:@"%s",fmtMACAddr];
}

/**  获取UUID*/
+ (NSString *)getUUIDByKeyChain
{
    NSString *bundle = [[NSBundle mainBundle] bundleIdentifier];
    // 这个key的前缀最好是你的BundleID
    NSString *strUUID = (NSString*)[KeyChainStore load:bundle];
    //首次执行该方法时，uuid为空
    if([strUUID isEqualToString:@""]|| !strUUID)
    {
        // 获取UUID
        strUUID = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        
        if(strUUID.length ==0 || [strUUID isEqualToString:@"00000000-0000-0000-0000-000000000000"])
        {
            //生成一个uuid的方法
            CFUUIDRef uuidRef= CFUUIDCreate(kCFAllocatorDefault);
            strUUID = (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault,uuidRef));
            CFRelease(uuidRef);
        }
        
        //将该uuid保存到keychain
        [KeyChainStore save:bundle data:strUUID];
    }
    return strUUID;
}

+ (NSString *)getMacAddressByKeyChain
{
    NSString *macAddress = (NSString*)[KeyChainStore load:@"MACADDRESS"];
    //首次执行该方法时，uuid为空
    if([macAddress isEqualToString:@""] || !macAddress)
    {
        // 获取UUID
        macAddress = [self macAddress];
        //将该uuid保存到keychain
        [KeyChainStore save:@"MACADDRESS" data:macAddress];
    }
//    [KeyChainStore deleteKeyData:@"MACADDRESS"];
    return macAddress;
}

/**
 生成随机的UUID

 @return uuid
 */
+ (NSString *)getUUID
{
    CFUUIDRef uuid_ref = CFUUIDCreate(NULL);
    CFStringRef uuid_string_ref= CFUUIDCreateString(NULL, uuid_ref);
    NSString *uuid = [NSString stringWithString:(__bridge NSString *)uuid_string_ref];
    CFRelease(uuid_ref);
    CFRelease(uuid_string_ref);
    return [uuid lowercaseString];
}


+ (NSString *)getMacAddress
{
    int                 mib[6];
    size_t              len;
    char                *buf;
    unsigned char       *ptr;
    struct if_msghdr    *ifm;
    struct sockaddr_dl  *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }
    
    if(sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }
    
    if((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. Rrror!\n");
        return NULL;
    }
    
    if(sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        return NULL;
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x",
                           *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    free(buf);
    
    return outstring;
}

@end

　　
