//
//  Tools.m
//  saolei
//
//  Created by yx_macmini on 2020/12/28.
//

#import "Tools.h"

@implementation Tools
+(UIColor *)colorNomo:(UIColor *)colorNomo dark:(UIColor *)colorDark
{
    if (@available(iOS 13.0, *)) {
        UIColor * rightColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull trainCollection) {
            if ([trainCollection userInterfaceStyle] == UIUserInterfaceStyleLight) { //浅色模式
                return colorNomo;
            } else { //深色模式
                return colorDark;
            }
        }];
        return rightColor;
    }
    else
    {
        return colorNomo;
    }
}

+(BOOL)isDark:(UIView *)view
{
    if (@available(iOS 13.0, *)) {
        if(view.traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark)
        {
            return YES;
        }
        else
        {
            return NO;
        }
    } else {
        return NO;
    }
}

@end
