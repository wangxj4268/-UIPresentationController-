//
//  NextViewController.m
//  UIPresentationController弹出框
//
//  Created by 王雪剑 on 2018/3/5.
//  Copyright © 2018年 zkml－wxj. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
}

#pragma mark ********【界面】********弹框中需要展示的内容
-(void)createView{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300)];
    label.backgroundColor = [UIColor cyanColor];
    label.text = @"这是内容视图";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}

#pragma mark ********【操作】********隐藏弹框
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
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
