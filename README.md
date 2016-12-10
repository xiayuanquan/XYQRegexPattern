# XYQRegexPattern
   
    正则表达式(因为正则表达式比较常用，所以列出其中常用的式子、当然支持自定义正则表达式)

# How to user api
 
#### 1、类方法，演示如下： 
    
    #import "XYQRegexPatternHelper.h"
    
    NSLog(@"%d",[XYQRegexPatternHelper validateBankCardNumber:@"62218849800236153"]);
    
    NSLog(@"%d",[XYQRegexPatternHelper validateEmail:@"363@qq.com"]); 
    
    NSLog(@"%d",[XYQRegexPatternHelper validateCustomRegex:@"^[\u4E00-\u9FA5]*$" TargetString:@"我只是中文"]);
      
#### 2、实例方法，演示如下：
    
    #import "XYQRegexPatternHelper.h"
    
    XYQRegexPatternHelper *hepler = [[XYQRegexPatternHelper alloc] init];
    
    NSLog(@"%d",[hepler validateIsValidQQ:@"1383478"]);        
    
    NSLog(@"%d",[hepler validateIsValidMailbox:@"363@qq.com"]);
    
    NSLog(@"%d",[hepler validateCustomRegex:@"^[\u4E00-\u9FA5]*$" TargetString:@"我只是中文"]);
