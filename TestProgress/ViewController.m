//
//  ViewController.m
//  TestProgress
//
//  Created by 冷求慧 on 16/1/13.
//  Copyright © 2016年 gdd. All rights reserved.
//

#import "ViewController.h"
#import "TCircleView.h"


#define screenWidthW  [[UIScreen mainScreen] bounds].size.width
#define screenHeightH [[UIScreen mainScreen] bounds].size.height

@interface ViewController (){
    TCircleView *secCircle;
}
@property (weak, nonatomic) IBOutlet TCircleView *circleView;
@property (weak, nonatomic) IBOutlet UISlider *myProgress;

- (IBAction)sliderValueChanged:(UISlider *)sender;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.circleView.persentage=self.myProgress.value=0.5; // 设置默认的值
}
- (IBAction)sliderValueChanged:(UISlider *)sender {
    self.circleView.persentage = sender.value;
    secCircle.persentage=sender.value;
}
#pragma mark 通过Init创建
- (IBAction)createAction:(id)sender {
    [secCircle removeFromSuperview];
    self.circleView.hidden=YES; // 隐藏第一种创建方式的视图
    secCircle=[[TCircleView alloc]initWithFrame:CGRectMake(50, 100, screenWidthW-50*2, screenWidthW-50*2)];
    secCircle.persentage=self.myProgress.value=(float)(arc4random()%10)/10; // 随机生成一个小数
    [self.view addSubview:secCircle];
}
@end
