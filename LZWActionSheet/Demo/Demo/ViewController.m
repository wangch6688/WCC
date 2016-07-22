//
//  ViewController.m
//  Demo
//
//  Created by hbh  on 14-9-26.
//  Copyright (c) 2014年 lizhiwei. All rights reserved.
//

#import "ViewController.h"
#import "LZWCustomActionSheet.h"
#import "CallView.h"
@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate,doneSelect>{
    
    NSArray *fakeData;
    UIPickerView *picker;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    fakeData  = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectAction:(UIButton *)sender {
    
    
    
    
    CallView * call = [[CallView alloc]initWithFrame:CGRectMake(0, 0, 414, 244)];
    
    
    CallView * call2 = [[[NSBundle mainBundle]loadNibNamed:@"CallView" owner:self options:nil]lastObject];
    
    
    
    
    
//    picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0,44, 320, 200)];
//    picker.dataSource = self;
//    picker.delegate = self;
    LZWCustomActionSheet *sheet = [[LZWCustomActionSheet alloc] initWithView:call2 AndHeight:350];
    sheet.doneDelegate = self;
    [sheet showInView:self.view];
}

-(void)done{
    
   NSInteger selecRow = [picker selectedRowInComponent:0];
    
//    [_selectBtn setTitle:fakeData[selecRow] forState:UIControlStateSelected];
    self.selectBtn.titleLabel.text = fakeData[selecRow];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return fakeData.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return fakeData[row];
}

@end
