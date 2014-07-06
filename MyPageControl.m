//
//  MyPageControl.m
//  SelfPageControl
//
//  Created by liangjie on 14-2-11.
//  Copyright (c) 2014年 witmob. All rights reserved.
//

#import "MyPageControl.h"

@implementation MyPageControl

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}

-(void) updateDots
{
    for (int i = 0; i < [self.subviews count]; i++)
    {
        activeImage = [UIImage imageNamed:@"4.png"];     //设置当前圆点图片
        inactiveImage = [UIImage imageNamed:@"3.png"];   //设置其他圆点图片
        UIImageView* dot = (UIImageView*)[self.subviews objectAtIndex:i];
        if ([dot.subviews count] != 0) {
            [[dot.subviews objectAtIndex:0] removeFromSuperview];
        }
        UIImageView *linshi=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)]; //初始化圆点图片大小
        [linshi setImage:self.currentPage == i ? activeImage : inactiveImage ];
        [dot addSubview:linshi];
        [dot bringSubviewToFront:linshi];
        [linshi setUserInteractionEnabled:YES];
    }
}

-(void) setCurrentPage:(NSInteger)page
{
    [super setCurrentPage:page];
    //修改图标大小
    for (NSUInteger subviewIndex = 0; subviewIndex < [self.subviews count]; subviewIndex++) {
        UIImageView* subview = [self.subviews objectAtIndex:subviewIndex];
        CGSize size;
        size.height = 20;
        size.width = 20;
        [subview setFrame:CGRectMake(subview.frame.origin.x, subview.frame.origin.y,
                                     size.width,size.height)];
    }
    [self updateDots];
}

@end
