//
//  ColorConst.h
//  Pods
//
//  Created by 徐琰璋 on 2018/11/14.
//

#ifndef ColorConst_h
#define ColorConst_h

#import "UIColor+Hex.h"

#undef    RGB
#define   RGB(R,G,B)        [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]
#undef    RGBA
#define   RGBA(R,G,B,A)     [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:A]

#undef    HEX
#define   HEX(HEX)          [UIColor colorWithHexString:HEX]
#undef    HEXA
#define   HEXA(HEX,A)       [UIColor colorWithHexString:HEX alpha:A]


#endif /* ColorConst_h */
