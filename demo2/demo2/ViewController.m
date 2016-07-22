//
//  ViewController.m
//  demo2
//
//  Created by wxhl on 16/7/22.
//  Copyright © 2016年 KingChuang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    NSNumber * num = @10;
    
//    NSInteger i = [num intValue];
//    
//    NSString * str = [NSString stringWithFormat:@"%ld",i];
    
    
//        NSNumberFormatter * framat = [[NSNumberFormatter alloc]init];
//    
//        NSString * str = [framat stringFromNumber:num];
    
    NSString * str = num.description;
    
    
    NSLog(@"%@",str);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
