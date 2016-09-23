//
//  TYNavController.m
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "TYNavController.h"

@interface TYNavController ()

@end

@implementation TYNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.tintColor = [UIColor blackColor];

    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:animated];
    
    //自定义按钮
    viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageNamed:@"navigationButtonReturn" target:nil action:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
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
