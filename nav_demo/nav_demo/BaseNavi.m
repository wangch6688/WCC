//
//  BaseNavi.m
//  nav_demo
//
//  Created by wxhl on 16/7/22.
//  Copyright © 2016年 KingChuang. All rights reserved.
//

#import "BaseNavi.h"

@interface BaseNavi ()

@end

@implementation BaseNavi





- (void)viewDidLoad {
    [super viewDidLoad];
    
//设置给navigationBar一个有名的图片,从而让其透明
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"clear.png"] forBarMetrics:UIBarMetricsDefault];

 //也可以是导航栏变得透明
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    //设置返回按钮隐藏
    [self.navigationItem setHidesBackButton:YES];
    
    
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
