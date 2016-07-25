//
//  ViewController.m
//  AutoLayoutByConstraint
//
//  Created by wxhl on 16/7/25.
//  Copyright © 2016年 KingChuang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView * imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"apple.jpg"];
    
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    
    [self.view addSubview:imageView];
    
    
    //利用官方的类,进行代码约束
    //进行代码约束
    /*
    [NSLayoutConstraint constraintWithItem:(nonnull id)   //要进行约束的视图
                                 attribute:(NSLayoutAttribute)   //要约束的部分
                                 relatedBy:(NSLayoutRelation)    /
                                    toItem:(nullable id)
                                 attribute:(NSLayoutAttribute)
                                multiplier:(CGFloat)
                                  constant:(CGFloat)];
     
     参数说明:
     第一个参数:指定约束左边的视图view1
     第二个参数:指定view1的属性attr1，具体属性见文末。
     第三个参数:指定左右两边的视图的关系relation，具体关系见文末。
     第四个参数:指定约束右边的视图view2
     第五个参数:指定view2的属性attr2，具体属性见文末。
     第六个参数:指定一个与view2属性相乘的乘数multiplier
     第七个参数:指定一个与view2属性相加的浮点数constant
     
     这个函数的对照公式为:
     view1.attr1 <relation> view2.attr2 * multiplier + constant
     
     注意:
     1.如果你想设置的约束里不需要第二个view，要将第四个参数设为nil，第五个参数设为NSLayoutAttributeNotAnAttribute
     
     
     
     typedef NS_ENUM(NSInteger, NSLayoutRelation) {
     NSLayoutRelationLessThanOrEqual = -1,          //小于等于
     NSLayoutRelationEqual = 0,                     //等于
     NSLayoutRelationGreaterThanOrEqual = 1,        //大于等于
     };
     typedef NS_ENUM(NSInteger, NSLayoutAttribute) {
        = 1,                     //左侧
     NSLayoutAttributeRight,                        //右侧
     NSLayoutAttributeTop,                          //上方
     NSLayoutAttributeBottom,                       //下方
     NSLayoutAttributeLeading,                      //首部
     NSLayoutAttributeTrailing,                     //尾部
     NSLayoutAttributeWidth,                        //宽度
     NSLayoutAttributeHeight,                       //高度
     NSLayoutAttributeCenterX,                      //X轴中心
     NSLayoutAttributeCenterY,                      //Y轴中心
     NSLayoutAttributeBaseline,                     //文本底标线
     
     NSLayoutAttributeNotAnAttribute = 0            //没有属性
     };
     
    */
    //进行上部的约束
    NSLayoutConstraint * topConstraint = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.f];
    
    //进行右部的约束
    NSLayoutConstraint * rightConstaint = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0f constant:0.f];
    
    
    //进行左部的约束
    NSLayoutConstraint * leftConstraint = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0f constant:0.f];
    
    //对 imageView 的高度进行约束
    NSLayoutConstraint * heightConstraint = [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:.5f constant:0.f];
    
    
    
    topConstraint.active = YES;
    rightConstaint.active = YES;
    heightConstraint.active = YES;
    leftConstraint.active = YES;
    
    //ios6.0或者7.0的时候,调用以下的方法添加约束,而不是调用 active 属性
//    [self.view addConstraints:@[leftConstraint,heightConstraint,topConstraint,rightConstaint]];
    
    
    
}


- (void)createImageView{
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
