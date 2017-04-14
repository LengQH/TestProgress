//
//  TCircleView+BaseConfiguration.m
//  2015-06-29-圆形进度条
//
//  Created by 冷求慧 on 7/1/15.
//  Copyright (c) 2015 gdd. All rights reserved.
//

#import "TCircleView+BaseConfiguration.h"
#import <TKit.h>

#define DEGREES_TO_RADOANS(x) (M_PI * (x) / 180.0) // 将角度转为弧度

@implementation TCircleView (BaseConfiguration)

+ (UIColor *)startColor {
    
    return [UIColor greenColor];
}

+ (UIColor *)centerColor {
    
    return [UIColor yellowColor];
}

+ (UIColor *)endColor {
    
    return [UIColor redColor];
}

+ (UIColor *)backgroundColor {
    
    return [UIColor purpleColor];
}

+ (CGFloat)lineWidth {
    
    return 13;
}

+ (CGFloat)startAngle {
    
    return DEGREES_TO_RADOANS(-225);
}

+ (CGFloat)endAngle {
    
    return DEGREES_TO_RADOANS(45);
}

+ (TCircleViewClockWiseType)clockWiseType {
    return YES;
}

@end
