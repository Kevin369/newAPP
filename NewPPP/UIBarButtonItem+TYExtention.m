//
//  UIBarButtonItem+TYExtention.m
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "UIBarButtonItem+TYExtention.h"

@implementation UIBarButtonItem (TYExtention)
+(instancetype)itemWithImageNamed:(NSString *)imageName  target:(id)target action:(SEL)action
{
    UIButton * btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    NSString * highImageName = [imageName stringByAppendingString:@"-click"];
    //    NSLog(@"%@",highImageName);
    
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

@end
