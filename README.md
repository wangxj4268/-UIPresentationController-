### 基于UIPresentationController的弹出框

```
简介：UIPresentationController 是 iOS8 新增的一个 API，用来控制 controller 之间的跳转特效。比如希望实现一个特效，显示一个窗口，大小和位置都是自定义的，并且遮罩在原来的页面上。在之前，可以通过UIWindow上自定义view来实现
```
[本Demo的Github地址](https://github.com/wangxj4268/-UIPresentationController-.git)


### 实现方式
#### 1.创建UIPresentationController的子类
![image](http://m.qpic.cn/psb?/V10Ra4TS1frb6f/a*AlnhjdoNjG9F262581RZ*i*BEkg*1NKHs.miWmrS0!/b/dAoBAAAAAAAA&bo=WAW8AgAAAAARF8M!&rf=viewer_4)
#### 2.在子类PresentationController的.m文件中，重写5个方法

```
(1).重写presentationTransitionWillBegin方法：
//presentationTransitionWillBegin 是在呈现过渡即将开始的时候被调用的。我们在这个方法中把半透明黑色背景 View 加入到 containerView 中，并且做一个 alpha 从0到1的渐变过渡动画。
- (void) presentationTransitionWillBegin
{
//使用UIVisualEffectView实现模糊效果
UIBlurEffect *blur  = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
_visualView = [[UIVisualEffectView alloc]initWithEffect:blur];
_visualView.frame = self.containerView.bounds;
_visualView.alpha = 0.4;
_visualView.backgroundColor = [UIColor blackColor];
[self.containerView addSubview:_visualView];
}

(2).重写presentationTransitionDidEnd方法：
//presentationTransitionDidEnd: 是在呈现过渡结束时被调用的，并且该方法提供一个布尔变量来判断过渡效果是否完成。在我们的例子中，我们可以使用它在过渡效果已结束但没有完成时移除半透明的黑色背景 View。
-(void)presentationTransitionDidEnd:(BOOL)completed {
// 如果呈现没有完成，那就移除背景 View
if (!completed) {
[_visualView removeFromSuperview];
}
}

(3).重写dismissalTransitionWillBegin方法:
//以上就涵盖了我们的背景 View 的呈现部分，我们现在需要给它添加淡出动画并且在它消失后移除它。正如你预料的那样，dismissalTransitionWillBegin 正是我们把它的 alpha 重新设回0的地方。
-(void)dismissalTransitionWillBegin {
_visualView.alpha = 0.0;
}

(4).重写dismissalTransitionDidEnd方法：
//我们还需要在消失完成后移除背景 View。做法与上面 presentationTransitionDidEnd: 类似，我们重载 dismissalTransitionDidEnd: 方法
-(void)dismissalTransitionDidEnd:(BOOL)completed{
if (completed) {
[_visualView removeFromSuperview];
}
}

5.重写frameOfPresentedViewInContainerView方法：
//还有最后一个方法需要重载。在我们的自定义呈现中，被呈现的 view 并没有完全完全填充整个屏幕，而是很小的一个矩形。被呈现的 view 的过渡动画之后的最终位置，是由 UIPresentationViewController 来负责定义的。我们重载 frameOfPresentedViewInContainerView 方法来定义这个最终位置
- (CGRect)frameOfPresentedViewInContainerView
{
CGFloat windowH = [UIScreen mainScreen].bounds.size.height;
CGFloat windowW = [UIScreen mainScreen].bounds.size.width;
self.presentedView.frame = CGRectMake(0, windowH - 300, windowW, 300);
return self.presentedView.frame;
}


```
#### 3.自定义继承自UIViewController的子类，在子类中编写弹框汇总所要展示的内容
![image](http://m.qpic.cn/psb?/V10Ra4TS1frb6f/V8Qr7NKjxWY1uwIgc35gC26tHnBXSh0sSj2AhZe6Bws!/b/dNoAAAAAAAAA&bo=dAV8AgAAAAADFz0!&rf=viewer_4)
```
//本demo中只展示了一个label
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
```


#### 4.在需要展示弹框的控制器中调用第3步中编写的内容视图控制器ContentViewController，并实现UIViewControllerTransitioningDelegate

```
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
//参数:
//presentedViewController:    将要跳转到的目标控制器
// presentingViewController:    跳转前的原控制器
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source{
return [[PresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

```
#### 5.展示效果
![image](http://m.qpic.cn/psb?/V10Ra4TS1frb6f/tlRc.WsFnBDINX9vSZzfQft4fDlFVlYqxc60997MTJA!/b/dA4AAAAAAAAA&bo=7gI2BQAAAAADB*0!&rf=viewer_4)

参考CSDN大佬地址：https://blog.csdn.net/ideaspress/article/details/51177934
