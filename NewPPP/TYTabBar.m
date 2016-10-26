//
//  TYTabBar.m
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "TYTabBar.h"

<<<<<<< HEAD
@implementation TYTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
=======

@interface TYTabBar ()
/** 加号按钮  */
@property(nonatomic,weak)UIButton * publish;

@end

@implementation TYTabBar


//重写init方法
-(instancetype)initWithFrame:(CGRect)frame
{
if (self = [super initWithFrame:frame]) {
//初始化自定义子控件
UIButton * publishBtn = [[UIButton alloc]init];
[publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
[publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
[self addSubview:publishBtn];
self.publish = publishBtn;
}

return self;
}

-(void)layoutSubviews
{
[super layoutSubviews];

self.publish.bounds = CGRectMake(0, 0, self.publish.currentBackgroundImage.size.width, self.publish.currentBackgroundImage.size.height);
    self.publish.center = CGPointMake(self.width * 0.5, self.height * 0.5);
    
    //   UITabBarButton 内部的一个类!
    
    Class class = NSClassFromString(@"UITabBarButton");
    
    int index = 0;
    CGFloat W = self.width * 0.2;
    CGFloat H = self.height;
    CGFloat Y = 0;
    
    
    for (UIView * view in self.subviews) {
        if ([view isKindOfClass:class]) {
            //布局
            if (index == 2) {
                index ++;
            }
            CGFloat X = index * W;
            view.frame = CGRectMake(X, Y, W, H);
            
            index ++;
        }
    }
    
}




@end


>>>>>>> 91db01130e5c7e6d9d640c630b57debccf57d7b0
