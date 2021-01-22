//
//  Tools.h
//  saolei
//
//  Created by yx_macmini on 2020/12/28.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Tools : NSObject
///判断当前模式
+(BOOL)isDark:(UIView *)view;
///设置颜色 colorNomo：默认颜色 colorDark：黑暗模式颜色
+(UIColor *)colorNomo:(UIColor *)colorNomo dark:(UIColor *)colorDark;

@end

NS_ASSUME_NONNULL_END
