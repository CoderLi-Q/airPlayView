//
//  ViewController.m
//  airPlay
//
//  Created by 李强 on 17/4/11.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "ViewController.h"

#import "LQAirPlayView.h"
@interface ViewController ()
@property (nonatomic, weak) LQAirPlayView *airView ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat w = 48;
    LQAirPlayView *airView = [LQAirPlayView airPlayViewWithFrame:CGRectMake(100, 100, w, w) image:[UIImage imageNamed:@"icon--视频比例"]];
//    LQAirPlayView *airView = [LQAirPlayView airPlayViewWithFrame:CGRectMake(100, 100, w, w) image:nil];
    _airView = airView;
    [self.view addSubview:airView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGFloat w = 100;
//    self.airView.frame = CGRectMake(100, 100, 2*w, 2*w);
    
}

@end
