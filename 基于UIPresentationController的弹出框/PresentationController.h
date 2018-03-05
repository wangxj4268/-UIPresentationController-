//
//  PresentationController.h
//  UIPresentationController弹出框
//
//  Created by 王雪剑 on 2018/3/5.
//  Copyright © 2018年 zkml－wxj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PresentationController : UIPresentationController

@property (nonatomic, strong)UIVisualEffectView *visualView;

@end

//主要目的是重写5个方法，需要我们自己修改的仅仅只是内容视图的frame
