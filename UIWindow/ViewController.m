//
//  ViewController.m
//  UIWindow
//
//  Created by 杜杜兴 on 16/6/7.
//  Copyright © 2016年 杜杜兴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //视图
    UIView *view1=[[UIView alloc] init];
    //位置大小
    view1.frame=CGRectMake(10, 30, 355, 627);
    //背景颜色
    view1.backgroundColor=[UIColor redColor];
    //将视图view1加入到父视图中
    [self.view addSubview:view1];
    
    NSLog(@"w:%f,h:%f",[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height);
    //frame
    NSLog(@"x:%f,y:%f,w:%f,h:%f",view1.frame.origin.x,view1.frame.origin.y,view1.frame.size.width,view1.frame.size.height);
    
    //bounds-边框大小，x,y永远为0
    NSLog(@"x:%f,y:%f,w:%f,h:%f",view1.bounds.origin.x,view1.bounds.origin.y,view1.bounds.size.width,view1.bounds.size.height);
    
    //center-中心点
    NSLog(@"center-x:%f,y:%f",view1.center.x,view1.center.y);
    
    //父视图
    UIView *superView=view1.superview;
    superView.backgroundColor=[UIColor greenColor];
    
    UIView *view2=[[UIView alloc] init];
    //坐标是根据父视图的位置来设置的，不会垮层
    view2.frame=CGRectMake(10, 100, 300, 30);
    view2.backgroundColor=[UIColor blackColor];
    //唯一标识
    view2.tag=2;
    //把view2添加到view1
    [view1 addSubview:view2];
    
    UIView *view3=[[UIView alloc] init];
    view3.frame=CGRectMake(20, 50, 100, 100);
    view3.backgroundColor= [UIColor purpleColor];
    //唯一标识
    view2.tag=3;
    //把view3添加到view1
    [view1 addSubview:view3];
    
//    //修改view1的所有子视图的颜色
//    NSArray *subviewsArray=view1.subviews;
//    for (UIView *view in subviewsArray) {
//        view.backgroundColor=[UIColor whiteColor];
//    }
    
        //不同的视图tag可以一样
        //修改tag=2视图的颜色
        NSArray *subviewsArray=view1.subviews;
        for (UIView *view in subviewsArray) {
            if(view.tag==2)
            view.backgroundColor=[UIColor whiteColor];
        }
    
    //通过tag值得到对应的子视图
    UIView *subView=[view1 viewWithTag:3];
    subView.backgroundColor=[UIColor orangeColor];
    
    //交换两个层的视图
    [view1 exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
