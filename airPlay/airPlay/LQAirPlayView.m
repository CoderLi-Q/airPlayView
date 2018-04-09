//
//  LQAirPlayView.m
//  airPlay
//
//  Created by 李强 on 17/4/11.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "LQAirPlayView.h"
#import <MediaPlayer/MediaPlayer.h>

@interface LQAirPlayView ()
    @property (nonatomic, weak) UIImageView *imageView;
    @property (nonatomic, weak) MPVolumeView *mpAirplayView;
    @property (nonatomic, weak) UIImage *image;
    @end

@implementation LQAirPlayView
    
+(instancetype)airPlayViewWithFrame:(CGRect)rect image:(UIImage *)image{
    return [[self alloc] initWithFrame:rect image:image];
}
    
+ (instancetype)airPlayViewWithFrame:(CGRect)rect{
    return [[self alloc] initWithFrame:rect];
}
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image
    {
        self = [self initWithFrame:frame];
        if (self) {
            self.imageView.image = image;
            self.image = image;
        }
        return self;
    }
- (instancetype)initWithFrame:(CGRect)frame
    {
        self = [super initWithFrame:frame];
        if (self) {
            self.backgroundColor = [UIColor lightGrayColor];
            UIImageView *imgView = [[UIImageView alloc]init];
            _imageView = imgView;
            [self addSubview:imgView];
            
            MPVolumeView *mpAirplayView = [[MPVolumeView alloc] init];

            [mpAirplayView setRouteButtonImage:nil forState:UIControlStateNormal];
            [mpAirplayView setShowsVolumeSlider:NO];
            _mpAirplayView = mpAirplayView;
            [self addSubview:mpAirplayView];
            

            
            for (UIButton *button in mpAirplayView.subviews) {
                if ([button isKindOfClass:[UIButton class]]) {
                    [button addObserver:self forKeyPath:@"alpha" options:NSKeyValueObservingOptionNew context:nil];
                }
            }
            
            
        }
        return self;
    }
    
    
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if ([object isKindOfClass:[UIButton class]] ) {
        
        if([[change valueForKey:NSKeyValueChangeNewKey] intValue] == 1){
            [(UIButton *)object setBounds:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        }else{
            self.mpAirplayView.hidden = NO;
            [object setAlpha:1];
        }
    }
    
}
-(void)layoutSubviews{
    [super layoutSubviews];
    CGFloat scaleW = self.frame.size.width/30;
    CGFloat scaleH = self.frame.size.height/34;
    CGFloat scale = scaleH > scaleW ? scaleH : scaleW;
    self.mpAirplayView.transform = CGAffineTransformMake(scale,0, 0, scale, self.frame.size.width/2, self.frame.size.height/2);
    self.imageView.frame = self.bounds;
    
}
    
    @end
