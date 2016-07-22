//
//  CustomActionSheet.h
//  LZWCustomActionSheet
//
//  Created by hbh  on 14-9-26.
//  Copyright (c) 2014年 lizhiwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol doneSelect <NSObject>

-(void)done;

@end

@interface LZWCustomActionSheet : UIView
{
    UIToolbar* toolBar;
}
-(id)initWithView:(UIView *)view AndHeight:(float)height;

-(void)showInView:(UIView *)view;

@property (nonatomic,strong) UIView *backGroundView;
@property (nonatomic,assign) CGFloat LXActionSheetHeight;
@property(nonatomic,unsafe_unretained) id<doneSelect> doneDelegate;

@end
