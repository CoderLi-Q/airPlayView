# airPlayView
easy to use airPlay with Personalization view

最近APP内需要用到投电视功能,所以做了一个小小的封装,方便使用.

>更新日志：

1  2018-04-09 KVO监听alpha的变化

苹果API有一个类叫"MPVolumeView",它是用来实现投电视的控件,
但是这个控件和UISlider类似,定制性不是很好,不能用frame改变大小,
并且自带一个电视的小图标,对于个性的产品来说很难满足他的需求(我们就是这样...)
-----故自己封装一个用起来比较方便的view.

导入方法：

    将LQAirPlayView.h和LQAirPlayView.m导入项目中

使用方法:

    LQAirPlayView *airView = [LQAirPlayView airPlayViewWithFrame:CGRectMake(100, 100, w, w) image:[UIImage imageNamed:@"icon]];
    [self.view addSubview:airView];

具体可以参考：https://www.jianshu.com/p/f54d772aa556
