MyPageControl
=============

可以自定义圆点的pageControl

将 MyPageControl.h和 MyPageControl.m拖拽到你的工程中

引用  #import “MyPageControl.h"

代码
···
MyPageControl *pageControl =[[MyPageControl alloc] initWithFrame:CGRectMake(0,49, 320, 37)];         //初始化
pageControl.currentPage = 0;                     //当前页数
pageControl.numberOfPages = 7;                   //总页数
[self.view addSubview:pageControl];              //添加
···
