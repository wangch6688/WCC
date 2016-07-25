//
//  ViewController.m
//  BubbleSortMethod
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
    
    //1.冒泡排序   对日期进行排序
//    NSMutableArray * array = [NSMutableArray arrayWithObjects:
//                              
//                              @"2013-10-18",
//                              
//                              @"2013-10-11",
//                              
//                              @"2013-10-16",
//                              
//                              @"2013-10-15",
//                              
//                              @"2013-10-14",
//                              
//                              @"2013-10-13",
//                              
//                              @"2013-10-19",
//                              
//                              @"2013-10-12", nil];
//    
//    NSLog(@"排序前:%@",array);
//    
//    
//    
//    NSInteger a = [array count];
//    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//    
//    NSLog(@"%@",array);
//    
//    NSString * tempStr = [NSString string];
//    
//    
//    
//    //冒泡排序
//    
//    for (int i = 0; i<a-1; i++) {
//        
//        for (int j =0; j<a-i-1; j++) {
//            
//            NSDate * date1 = [dateFormatter dateFromString:[array objectAtIndex:j+1]];
//            
//            NSDate * date2 = [dateFormatter dateFromString:[array objectAtIndex:j]];
//            
//            if (date1==[date1 earlierDate:date2]) {
//                
//                tempStr = [array objectAtIndex:j+1];
//                
//                [array exchangeObjectAtIndex:j+1 withObjectAtIndex:j];
//                
//                [array replaceObjectAtIndex:j withObject:tempStr];
//                
//            }
//            
//        }
//        
//    }
//    
//    
//    
//    NSLog(@"排序后:%@",array);
//    
//    
//    
    
    
    
    //2.对一组数据的大小进行排序
    NSMutableArray*p = [[NSMutableArray alloc]initWithObjects:@"3",@"5",@"4",@"1",nil];
    
    for (int i = 0; i<[p count]; i++)
    {
        for(int j=i+1; j<[p count];j++)
        {
            int a = [[p objectAtIndex:i] intValue];
            //              NSLog(@"a= %d",a);
            int b = [[p objectAtIndex:j] intValue];
            //              NSLog(@"b= %d",b);
            //             NSLog(@"------");
            if (a > b)
            {
                [p replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%d",b]];
                [p replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%d",a]];
            }
            
        }
        
    }
    
    for (int i = 0; i<4; i++)
    {
        
        NSLog(@"%@",[p objectAtIndex:i]);
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
