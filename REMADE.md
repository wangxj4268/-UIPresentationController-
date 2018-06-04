{\rtf1\ansi\ansicpg936\cocoartf1561\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset134 PingFangSC-Regular;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ### 
\f1 \'bb\'f9\'d3\'da
\f0 UIPresentationController
\f1 \'b5\'c4\'b5\'af\'b3\'f6\'bf\'f2
\f0 \
\
```\

\f1 \'bc\'f2\'bd\'e9\'a3\'ba
\f0 UIPresentationController 
\f1 \'ca\'c7
\f0  iOS8 
\f1 \'d0\'c2\'d4\'f6\'b5\'c4\'d2\'bb\'b8\'f6
\f0  API
\f1 \'a3\'ac\'d3\'c3\'c0\'b4\'bf\'d8\'d6\'c6
\f0  controller 
\f1 \'d6\'ae\'bc\'e4\'b5\'c4\'cc\'f8\'d7\'aa\'cc\'d8\'d0\'a7\'a1\'a3\'b1\'c8\'c8\'e7\'cf\'a3\'cd\'fb\'ca\'b5\'cf\'d6\'d2\'bb\'b8\'f6\'cc\'d8\'d0\'a7\'a3\'ac\'cf\'d4\'ca\'be\'d2\'bb\'b8\'f6\'b4\'b0\'bf\'da\'a3\'ac\'b4\'f3\'d0\'a1\'ba\'cd\'ce\'bb\'d6\'c3\'b6\'bc\'ca\'c7\'d7\'d4\'b6\'a8\'d2\'e5\'b5\'c4\'a3\'ac\'b2\'a2\'c7\'d2\'d5\'da\'d5\'d6\'d4\'da\'d4\'ad\'c0\'b4\'b5\'c4\'d2\'b3\'c3\'e6\'c9\'cf\'a1\'a3\'d4\'da\'d6\'ae\'c7\'b0\'a3\'ac\'bf\'c9\'d2\'d4\'cd\'a8\'b9\'fd
\f0 UIWindow
\f1 \'c9\'cf\'d7\'d4\'b6\'a8\'d2\'e5
\f0 view
\f1 \'c0\'b4\'ca\'b5\'cf\'d6
\f0 \
```\
[
\f1 \'b1\'be
\f0 Demo
\f1 \'b5\'c4
\f0 Github
\f1 \'b5\'d8\'d6\'b7
\f0 ](https://github.com/wangxj4268/-UIPresentationController-.git)\
\
 \
### 
\f1 \'ca\'b5\'cf\'d6\'b7\'bd\'ca\'bd
\f0 \
#### 1.
\f1 \'b4\'b4\'bd\'a8
\f0 UIPresentationController
\f1 \'b5\'c4\'d7\'d3\'c0\'e0
\f0 \
![image](http://m.qpic.cn/psb?/V10Ra4TS1frb6f/a*AlnhjdoNjG9F262581RZ*i*BEkg*1NKHs.miWmrS0!/b/dAoBAAAAAAAA&bo=WAW8AgAAAAARF8M!&rf=viewer_4)\
#### 2.
\f1 \'d4\'da\'d7\'d3\'c0\'e0
\f0 PresentationController
\f1 \'b5\'c4
\f0 .m
\f1 \'ce\'c4\'bc\'fe\'d6\'d0\'a3\'ac\'d6\'d8\'d0\'b4
\f0 5
\f1 \'b8\'f6\'b7\'bd\'b7\'a8
\f0 \
\
```\
(1).
\f1 \'d6\'d8\'d0\'b4
\f0 presentationTransitionWillBegin
\f1 \'b7\'bd\'b7\'a8\'a3\'ba
\f0 \
//presentationTransitionWillBegin 
\f1 \'ca\'c7\'d4\'da\'b3\'ca\'cf\'d6\'b9\'fd\'b6\'c9\'bc\'b4\'bd\'ab\'bf\'aa\'ca\'bc\'b5\'c4\'ca\'b1\'ba\'f2\'b1\'bb\'b5\'f7\'d3\'c3\'b5\'c4\'a1\'a3\'ce\'d2\'c3\'c7\'d4\'da\'d5\'e2\'b8\'f6\'b7\'bd\'b7\'a8\'d6\'d0\'b0\'d1\'b0\'eb\'cd\'b8\'c3\'f7\'ba\'da\'c9\'ab\'b1\'b3\'be\'b0
\f0  View 
\f1 \'bc\'d3\'c8\'eb\'b5\'bd
\f0  containerView 
\f1 \'d6\'d0\'a3\'ac\'b2\'a2\'c7\'d2\'d7\'f6\'d2\'bb\'b8\'f6
\f0  alpha 
\f1 \'b4\'d3
\f0 0
\f1 \'b5\'bd
\f0 1
\f1 \'b5\'c4\'bd\'a5\'b1\'e4\'b9\'fd\'b6\'c9\'b6\'af\'bb\'ad\'a1\'a3
\f0 \
- (void) presentationTransitionWillBegin\
\{\
    //
\f1 \'ca\'b9\'d3\'c3
\f0 UIVisualEffectView
\f1 \'ca\'b5\'cf\'d6\'c4\'a3\'ba\'fd\'d0\'a7\'b9\'fb
\f0 \
    UIBlurEffect *blur  = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];\
    _visualView = [[UIVisualEffectView alloc]initWithEffect:blur];\
    _visualView.frame = self.containerView.bounds;\
    _visualView.alpha = 0.4;\
    _visualView.backgroundColor = [UIColor blackColor];\
    [self.containerView addSubview:_visualView];\
\}\
\
(2).
\f1 \'d6\'d8\'d0\'b4
\f0 presentationTransitionDidEnd
\f1 \'b7\'bd\'b7\'a8\'a3\'ba
\f0 \
//presentationTransitionDidEnd: 
\f1 \'ca\'c7\'d4\'da\'b3\'ca\'cf\'d6\'b9\'fd\'b6\'c9\'bd\'e1\'ca\'f8\'ca\'b1\'b1\'bb\'b5\'f7\'d3\'c3\'b5\'c4\'a3\'ac\'b2\'a2\'c7\'d2\'b8\'c3\'b7\'bd\'b7\'a8\'cc\'e1\'b9\'a9\'d2\'bb\'b8\'f6\'b2\'bc\'b6\'fb\'b1\'e4\'c1\'bf\'c0\'b4\'c5\'d0\'b6\'cf\'b9\'fd\'b6\'c9\'d0\'a7\'b9\'fb\'ca\'c7\'b7\'f1\'cd\'ea\'b3\'c9\'a1\'a3\'d4\'da\'ce\'d2\'c3\'c7\'b5\'c4\'c0\'fd\'d7\'d3\'d6\'d0\'a3\'ac\'ce\'d2\'c3\'c7\'bf\'c9\'d2\'d4\'ca\'b9\'d3\'c3\'cb\'fc\'d4\'da\'b9\'fd\'b6\'c9\'d0\'a7\'b9\'fb\'d2\'d1\'bd\'e1\'ca\'f8\'b5\'ab\'c3\'bb\'d3\'d0\'cd\'ea\'b3\'c9\'ca\'b1\'d2\'c6\'b3\'fd\'b0\'eb\'cd\'b8\'c3\'f7\'b5\'c4\'ba\'da\'c9\'ab\'b1\'b3\'be\'b0
\f0  View
\f1 \'a1\'a3
\f0 \
-(void)presentationTransitionDidEnd:(BOOL)completed \{\
    // 
\f1 \'c8\'e7\'b9\'fb\'b3\'ca\'cf\'d6\'c3\'bb\'d3\'d0\'cd\'ea\'b3\'c9\'a3\'ac\'c4\'c7\'be\'cd\'d2\'c6\'b3\'fd\'b1\'b3\'be\'b0
\f0  View\
    if (!completed) \{\
        [_visualView removeFromSuperview];\
    \}\
\}\
\
(3).
\f1 \'d6\'d8\'d0\'b4
\f0 dismissalTransitionWillBegin
\f1 \'b7\'bd\'b7\'a8
\f0 :\
//
\f1 \'d2\'d4\'c9\'cf\'be\'cd\'ba\'ad\'b8\'c7\'c1\'cb\'ce\'d2\'c3\'c7\'b5\'c4\'b1\'b3\'be\'b0
\f0  View 
\f1 \'b5\'c4\'b3\'ca\'cf\'d6\'b2\'bf\'b7\'d6\'a3\'ac\'ce\'d2\'c3\'c7\'cf\'d6\'d4\'da\'d0\'e8\'d2\'aa\'b8\'f8\'cb\'fc\'cc\'ed\'bc\'d3\'b5\'ad\'b3\'f6\'b6\'af\'bb\'ad\'b2\'a2\'c7\'d2\'d4\'da\'cb\'fc\'cf\'fb\'ca\'a7\'ba\'f3\'d2\'c6\'b3\'fd\'cb\'fc\'a1\'a3\'d5\'fd\'c8\'e7\'c4\'e3\'d4\'a4\'c1\'cf\'b5\'c4\'c4\'c7\'d1\'f9\'a3\'ac
\f0 dismissalTransitionWillBegin 
\f1 \'d5\'fd\'ca\'c7\'ce\'d2\'c3\'c7\'b0\'d1\'cb\'fc\'b5\'c4
\f0  alpha 
\f1 \'d6\'d8\'d0\'c2\'c9\'e8\'bb\'d8
\f0 0
\f1 \'b5\'c4\'b5\'d8\'b7\'bd\'a1\'a3
\f0 \
-(void)dismissalTransitionWillBegin \{\
    _visualView.alpha = 0.0;\
\}\
\
(4).
\f1 \'d6\'d8\'d0\'b4
\f0 dismissalTransitionDidEnd
\f1 \'b7\'bd\'b7\'a8\'a3\'ba
\f0 \
//
\f1 \'ce\'d2\'c3\'c7\'bb\'b9\'d0\'e8\'d2\'aa\'d4\'da\'cf\'fb\'ca\'a7\'cd\'ea\'b3\'c9\'ba\'f3\'d2\'c6\'b3\'fd\'b1\'b3\'be\'b0
\f0  View
\f1 \'a1\'a3\'d7\'f6\'b7\'a8\'d3\'eb\'c9\'cf\'c3\'e6
\f0  presentationTransitionDidEnd: 
\f1 \'c0\'e0\'cb\'c6\'a3\'ac\'ce\'d2\'c3\'c7\'d6\'d8\'d4\'d8
\f0  dismissalTransitionDidEnd: 
\f1 \'b7\'bd\'b7\'a8
\f0 \
-(void)dismissalTransitionDidEnd:(BOOL)completed\{\
    if (completed) \{\
        [_visualView removeFromSuperview];\
    \}\
\}\
\
5.
\f1 \'d6\'d8\'d0\'b4
\f0 frameOfPresentedViewInContainerView
\f1 \'b7\'bd\'b7\'a8\'a3\'ba
\f0 \
//
\f1 \'bb\'b9\'d3\'d0\'d7\'ee\'ba\'f3\'d2\'bb\'b8\'f6\'b7\'bd\'b7\'a8\'d0\'e8\'d2\'aa\'d6\'d8\'d4\'d8\'a1\'a3\'d4\'da\'ce\'d2\'c3\'c7\'b5\'c4\'d7\'d4\'b6\'a8\'d2\'e5\'b3\'ca\'cf\'d6\'d6\'d0\'a3\'ac\'b1\'bb\'b3\'ca\'cf\'d6\'b5\'c4
\f0  view 
\f1 \'b2\'a2\'c3\'bb\'d3\'d0\'cd\'ea\'c8\'ab\'cd\'ea\'c8\'ab\'cc\'ee\'b3\'e4\'d5\'fb\'b8\'f6\'c6\'c1\'c4\'bb\'a3\'ac\'b6\'f8\'ca\'c7\'ba\'dc\'d0\'a1\'b5\'c4\'d2\'bb\'b8\'f6\'be\'d8\'d0\'ce\'a1\'a3\'b1\'bb\'b3\'ca\'cf\'d6\'b5\'c4
\f0  view 
\f1 \'b5\'c4\'b9\'fd\'b6\'c9\'b6\'af\'bb\'ad\'d6\'ae\'ba\'f3\'b5\'c4\'d7\'ee\'d6\'d5\'ce\'bb\'d6\'c3\'a3\'ac\'ca\'c7\'d3\'c9
\f0  UIPresentationViewController 
\f1 \'c0\'b4\'b8\'ba\'d4\'f0\'b6\'a8\'d2\'e5\'b5\'c4\'a1\'a3\'ce\'d2\'c3\'c7\'d6\'d8\'d4\'d8
\f0  frameOfPresentedViewInContainerView 
\f1 \'b7\'bd\'b7\'a8\'c0\'b4\'b6\'a8\'d2\'e5\'d5\'e2\'b8\'f6\'d7\'ee\'d6\'d5\'ce\'bb\'d6\'c3
\f0 \
- (CGRect)frameOfPresentedViewInContainerView\
\{\
    CGFloat windowH = [UIScreen mainScreen].bounds.size.height;\
    CGFloat windowW = [UIScreen mainScreen].bounds.size.width;\
    self.presentedView.frame = CGRectMake(0, windowH - 300, windowW, 300);\
    return self.presentedView.frame;\
\}\
\
\
```\
#### 3.
\f1 \'d7\'d4\'b6\'a8\'d2\'e5\'bc\'cc\'b3\'d0\'d7\'d4
\f0 UIViewController
\f1 \'b5\'c4\'d7\'d3\'c0\'e0\'a3\'ac\'d4\'da\'d7\'d3\'c0\'e0\'d6\'d0\'b1\'e0\'d0\'b4\'b5\'af\'bf\'f2\'bb\'e3\'d7\'dc\'cb\'f9\'d2\'aa\'d5\'b9\'ca\'be\'b5\'c4\'c4\'da\'c8\'dd
\f0 \
![image](http://m.qpic.cn/psb?/V10Ra4TS1frb6f/V8Qr7NKjxWY1uwIgc35gC26tHnBXSh0sSj2AhZe6Bws!/b/dNoAAAAAAAAA&bo=dAV8AgAAAAADFz0!&rf=viewer_4)\
```\
//
\f1 \'b1\'be
\f0 demo
\f1 \'d6\'d0\'d6\'bb\'d5\'b9\'ca\'be\'c1\'cb\'d2\'bb\'b8\'f6
\f0 label\
- (void)viewDidLoad \{\
    [super viewDidLoad];\
    [self createView];\
\}\
\
#pragma mark ********
\f1 \'a1\'be\'bd\'e7\'c3\'e6\'a1\'bf
\f0 ********
\f1 \'b5\'af\'bf\'f2\'d6\'d0\'d0\'e8\'d2\'aa\'d5\'b9\'ca\'be\'b5\'c4\'c4\'da\'c8\'dd
\f0 \
-(void)createView\{\
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300)];\
    label.backgroundColor = [UIColor cyanColor];\
    label.text = @"
\f1 \'d5\'e2\'ca\'c7\'c4\'da\'c8\'dd\'ca\'d3\'cd\'bc
\f0 ";\
    label.textAlignment = NSTextAlignmentCenter;\
    [self.view addSubview:label];\
\}\
\
#pragma mark ********
\f1 \'a1\'be\'b2\'d9\'d7\'f7\'a1\'bf
\f0 ********
\f1 \'d2\'fe\'b2\'d8\'b5\'af\'bf\'f2
\f0 \
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event\{\
    [self dismissViewControllerAnimated:YES completion:nil];\
\}\
```\
\
\
#### 4.
\f1 \'d4\'da\'d0\'e8\'d2\'aa\'d5\'b9\'ca\'be\'b5\'af\'bf\'f2\'b5\'c4\'bf\'d8\'d6\'c6\'c6\'f7\'d6\'d0\'b5\'f7\'d3\'c3\'b5\'da
\f0 3
\f1 \'b2\'bd\'d6\'d0\'b1\'e0\'d0\'b4\'b5\'c4\'c4\'da\'c8\'dd\'ca\'d3\'cd\'bc\'bf\'d8\'d6\'c6\'c6\'f7
\f0 ContentViewController
\f1 \'a3\'ac\'b2\'a2\'ca\'b5\'cf\'d6
\f0 UIViewControllerTransitioningDelegate\
\
```\
- (void)viewDidLoad \{\
    [super viewDidLoad];\
    [self createView];\
\}\
\
#pragma mark ********
\f1 \'a1\'be\'bd\'e7\'c3\'e6\'a1\'bf
\f0 ********
\f1 \'b4\'b4\'bd\'a8\'b5\'af\'b3\'f6\'b0\'b4\'c5\'a5
\f0 \
-(void)createView\{\
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];\
    button.frame = CGRectMake(100, 100, 100, 30);\
    [button setTitle:@"
\f1 \'b5\'af\'b3\'f6\'ca\'d3\'cd\'bc
\f0 " forState:UIControlStateNormal];\
    button.titleLabel.textColor = [UIColor blueColor];\
    button.titleLabel.font = [UIFont systemFontOfSize:14.0];\
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];\
    button.backgroundColor = [UIColor grayColor];\
    [self.view addSubview:button];\
\}\
\
#pragma mark ********
\f1 \'a1\'be\'b2\'d9\'d7\'f7\'a1\'bf
\f0 ********
\f1 \'b5\'af\'b3\'f6\'b0\'b4\'c5\'a5\'b5\'c4\'ca\'b5\'cf\'d6
\f0 \
-(void)buttonClicked:(UIButton *)sender\
\{\
    ContentViewController *vc = [[ContentViewController alloc]init];\
    vc.modalPresentationStyle = UIModalPresentationCustom;// 
\f1 \'c9\'e8\'d6\'c3
\f0  
\f1 \'b6\'af\'bb\'ad\'d1\'f9\'ca\'bd
\f0 \
    vc.transitioningDelegate = self;// 
\f1 \'b4\'cb\'b6\'d4\'cf\'f3\'d2\'aa\'ca\'b5\'cf\'d6
\f0  UIViewControllerTransitioningDelegate 
\f1 \'d0\'ad\'d2\'e9
\f0 \
    [self presentViewController:vc animated:YES completion:nil];\
\}\
\
#pragma mark - UIViewControllerTransitioningDelegate\
// 
\f1 \'b7\'b5\'bb\'d8\'bf\'d8\'d6\'c6\'bf\'d8\'d6\'c6\'c6\'f7\'b5\'af\'b3\'f6\'b6\'af\'bb\'ad\'b5\'c4\'b6\'d4\'cf\'f3
\f0 \
//
\f1 \'b2\'ce\'ca\'fd
\f0 :\
//presentedViewController:    
\f1 \'bd\'ab\'d2\'aa\'cc\'f8\'d7\'aa\'b5\'bd\'b5\'c4\'c4\'bf\'b1\'ea\'bf\'d8\'d6\'c6\'c6\'f7
\f0 \
// presentingViewController:    
\f1 \'cc\'f8\'d7\'aa\'c7\'b0\'b5\'c4\'d4\'ad\'bf\'d8\'d6\'c6\'c6\'f7
\f0 \
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source\{\
    return [[PresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];\
\}\
\
```\
#### 5.
\f1 \'d5\'b9\'ca\'be\'d0\'a7\'b9\'fb
\f0 \
![image](http://m.qpic.cn/psb?/V10Ra4TS1frb6f/tlRc.WsFnBDINX9vSZzfQft4fDlFVlYqxc60997MTJA!/b/dA4AAAAAAAAA&bo=7gI2BQAAAAADB*0!&rf=viewer_4)\
\

\f1 \'b2\'ce\'bf\'bc
\f0 CSDN
\f1 \'b4\'f3\'c0\'d0\'b5\'d8\'d6\'b7\'a3\'ba
\f0 https://blog.csdn.net/ideaspress/article/details/51177934}