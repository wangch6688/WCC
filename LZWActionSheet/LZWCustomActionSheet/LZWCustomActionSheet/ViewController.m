//
//  ViewController.m
//  LZWCustomActionSheet
//
//  Created by hbh  on 14-9-26.
//  Copyright (c) 2014年 lizhiwei. All rights reserved.
//

#import "ViewController.h"
#import "LZWCustomActionSheet.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(UIButton *)sender {
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50,74, 200, 50)];
    label.text = @"想干什么就干什么...";
    label.backgroundColor = [UIColor redColor];
    LZWCustomActionSheet *sheet = [[LZWCustomActionSheet alloc] initWithView:label AndHeight:300];
    [sheet showInView:self.view];
    
}
@end
