//
//  CircleView.h
//  2015-06-29-圆形进度条
//
//  Created by 冷求慧 on 6/29/15.
//  Copyright (c) 2015 gdd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSInteger, TCircleViewClockWiseType) {
    TCircleViewClockWiseYes,
    TCircleViewClockWiseNo
};

@interface TCircleView : UIView

@property (assign, nonatomic) CGFloat persentage;

@end