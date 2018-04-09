//
//  LQAirPlayView.h
//  airPlay
//
//  Created by 李强 on 17/4/11.
//  Copyright © 2017年 李强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LQAirPlayView : UIView

/**
 返回实例

 @param rect frame
 @param image 图片
 @return 实例
 */
+ (instancetype)airPlayViewWithFrame:(CGRect)rect image:(UIImage *)image;
@end
