//
//  BaseViewController.h
//  NewPPP
//
//  Created by ihaveuKevin on 16/9/22.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^BaseViewControllerHandle)();

@interface BaseViewController : UIViewController
- (void)pop;

- (void)popToRootVc;

- (void)popToVc:(UIViewController *)vc;

- (void)dismiss;

- (void)dismissWithCompletion:(void(^)())completion;

- (void)presentVc:(UIViewController *)vc;

- (void)presentVc:(UIViewController *)vc completion:(void (^)(void))completion;

- (void)pushVc:(UIViewController *)vc;

- (void)removeChildVc:(UIViewController *)childVc;

- (void)addChildVc:(UIViewController *)childVc;
/** 加载中*/
- (void)showLoadingAnimation;

/** 停止加载*/
- (void)hideLoadingAnimation;

/** 请求数据，交给子类去实现*/
- (void)loadData;

@property (nonatomic, assign) BOOL isNetworkReachable;

@end
