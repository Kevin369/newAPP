//
//  TYRootViewcontroller.m
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "TYRootViewcontroller.h"
#import "TYTabBar.h"
#import "TYNavController.h"
#import "HomeViewController.h"
#import "SecPageViewController.h"
#import "ThirdPageViewController.h"
#import "MyPageViewController.h"

@interface TYRootViewcontroller ()

@end

@implementation TYRootViewcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self addChildVCS];
    TYTabBar * tabBar = [[TYTabBar alloc]init];
    [self setValue:tabBar forKey:@"tabBar"];
}




- (void)addChildVCS {
    //添加子控制器
    
    
    [self setupChildViewController:[[HomeViewController alloc]init] title:@"首页" imageNamed:@"tabBar_essence_icon" selectImageNamed:@"tabBar_essence_click_icon"];
    
    [self setupChildViewController:[[SecPageViewController alloc]init] title:@"第二" imageNamed:@"tabBar_new_icon" selectImageNamed:@"tabBar_new_click_icon"];
    
    [self setupChildViewController:[[ThirdPageViewController alloc]init] title:@"第三" imageNamed:@"tabBar_friendTrends_icon" selectImageNamed:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildViewController:[[MyPageViewController alloc]init] title:@"我的" imageNamed:@"tabBar_me_icon" selectImageNamed:@"tabBar_me_click_icon"];
    
}


/**
 *  创建子控制
 *
 *  @param title           控制器的tilte
 *  @param imageName       图片名称
 *  @param selectImageName 选中图片名称
 */
-(void)setupChildViewController:(UIViewController *)vc title:(NSString *)title imageNamed:(NSString *)imageName selectImageNamed:(NSString *)selectImageName
{
    TYNavController * nav = [[TYNavController alloc]initWithRootViewController:vc];
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage = [UIImage originarImageNamed:selectImageName];
    [self addChildViewController:nav];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
