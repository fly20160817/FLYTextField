//
//  ViewController.m
//  FLYTextField
//
//  Created by fly on 2020/4/17.
//  Copyright © 2020 fly. All rights reserved.
//

#import "ViewController.h"
#import "FLYTextField.h"

@interface ViewController ()

@property (nonatomic, strong) FLYTextField * accountTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.accountTF];
}


- (FLYTextField *)accountTF
{
    if( _accountTF == nil )
    {
        _accountTF = [[FLYTextField alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2.0, 200, 250, 32)];
        _accountTF.placeholder = @"请输入账号";
        _accountTF.font = [UIFont systemFontOfSize:15];
        
        FLYTextFieldConfig * config = [FLYTextFieldConfig defaultConfig];
        config.leftImage = [UIImage imageNamed:@"1587089518"];
        config.leftImageFrame = CGRectMake(1.5, 8, 10.5, 16);
        config.leftEdge = 22;
        config.showLine = YES;
        config.lineColor = [UIColor lightGrayColor];
        config.lineThickness = 0.5;
        
        _accountTF.config = config;
    }
    return _accountTF;
}


@end
