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
//		File Name:		CustomTextField.m
//		Product Name:	Pods-ToolWidget_Example
//		Author:			xuyanzhang@___ORGANIZATIONNAME___
//		Swift Version:	4.0
//		Created Date:	2019/1/9 1:29 PM
//		
//		Copyright © 2019 ___ORGANIZATIONNAME___.
//		All rights reserved.
// )                                                                  (
//'--------------------------------------------------------------------'
	

#import "CustomTextField.h"

@implementation CustomTextField

// 返回placeholderLabel的bounds，改变返回值，是调整placeholderLabel的位置
- (CGRect)placeholderRectForBounds:(CGRect)bounds {
    return CGRectMake(0, 0 , self.bounds.size.width, self.bounds.size.height);
}
// 这个函数是调整placeholder在placeholderLabel中绘制的位置以及范围
- (void)drawPlaceholderInRect:(CGRect)rect {
    [super drawPlaceholderInRect:CGRectMake(15, 0 , self.bounds.size.width, self.bounds.size.height)];
}

// 控制还未输入时文本的位置，缩进40
- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds, 15, 0);
}
// 控制输入后文本的位置，缩进20
- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds, 15, 0);
}

@end
