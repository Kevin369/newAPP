//
//  UIBarButtonItem+TYExtention.m
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "UIBarButtonItem+TYExtention.h"

@implementation UIBarButtonItem (TYExtention)
<<<<<<< HEAD
=======

>>>>>>> 91db01130e5c7e6d9d640c630b57debccf57d7b0
+(instancetype)itemWithImageNamed:(NSString *)imageName  target:(id)target action:(SEL)action
{
    UIButton * btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    NSString * highImageName = [imageName stringByAppendingString:@"-click"];
<<<<<<< HEAD
    //    NSLog(@"%@",highImageName);
    
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    
=======
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
>>>>>>> 91db01130e5c7e6d9d640c630b57debccf57d7b0
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

@end
