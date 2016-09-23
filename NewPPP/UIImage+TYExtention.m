//
//  UIImage+TYExtention.m
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "UIImage+TYExtention.h"

@implementation UIImage (TYExtention)
+(UIImage *)originarImageNamed:(NSString *)name
{
    UIImage * image = [UIImage imageNamed:name];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
    
}

@end
