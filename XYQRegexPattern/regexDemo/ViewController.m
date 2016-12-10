//
//  ViewController.m
//  RegexPatternHelperDemo
//
//  Created by 夏远全 on 16/12/10.
//  Copyright © 2016年 xiayuanquan. All rights reserved.
//

#import "ViewController.h"
#import "XYQRegexPatternHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.类方法
    NSLog(@"%d",[XYQRegexPatternHelper validateBankCardNumber:@"62218849800236153"]);
    NSLog(@"%d",[XYQRegexPatternHelper validateEmail:@"363@qq.com"]);
    NSLog(@"%d",[XYQRegexPatternHelper validateCustomRegex:@"^[\u4E00-\u9FA5]*$" TargetString:@"我只是中文"]);
    
    
    //2.实例方法
    XYQRegexPatternHelper *hepler = [[XYQRegexPatternHelper alloc] init];
    NSLog(@"%d",[hepler validateIsValidQQ:@"1383478"]);
    NSLog(@"%d",[hepler validateIsValidMailbox:@"363@qq.com"]);
    NSLog(@"%d",[hepler validateCustomRegex:@"^[\u4E00-\u9FA5]*$" TargetString:@"我只是中文"]);
}

@end
