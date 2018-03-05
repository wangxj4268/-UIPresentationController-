//
//  ViewController.m
//  基于UIPresentationController的弹出框
//
//  Created by 王雪剑 on 2018/3/5.
//  Copyright © 2018年 zkml－wxj. All rights reserved.
//

#import "ViewController.h"
#import "PresentationController.h"
#import "ContentViewController.h"
@interface ViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
}

#pragma mark ********【界面】********创建弹出按钮
-(void)createView{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button setTitle:@"弹出视图" forState:UIControlStateNormal];
    button.titleLabel.textColor = [UIColor blueColor];
    button.titleLabel.font = [UIFont systemFontOfSize:14.0];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor grayColor];
    [self.view addSubview:button];
}

#pragma mark ********【操作】********弹出按钮的实现
-(void)buttonClicked:(UIButton *)sender
{
    ContentViewController *vc = [[ContentViewController alloc]init];
    vc.modalPresentationStyle = UIModalPresentationCustom;// 设置 动画样式
    vc.transitioningDelegate = self;// 此对象要实现 UIViewControllerTransitioningDelegate 协议
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate
// 返回控制控制器弹出动画的对象
/**
 *  参数: presentedViewController     将要跳转到的目标控制器
 presentingViewController    跳转前的原控制器
 */
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source{
    
    return [[PresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
