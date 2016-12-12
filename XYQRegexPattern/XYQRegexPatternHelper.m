//
//  XYQRegexPatternHelper.m
//  RegexPatternHelper
//
//  Created by 夏远全 on 16/12/10.
//  Copyright © 2016年 xiayuanquan. All rights reserved.
//

#import "XYQRegexPatternHelper.h"

@implementation XYQRegexPatternHelper

//最终正则匹配结果
-(BOOL)regexPatternResultWithRegex:(NSString *)regex TargetString:(NSString *)targetString{
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:targetString];
}

//验证字符串是否为空值
-(BOOL)validateIsEmpty:(NSString *)targetString{
    
    return targetString.length==0?YES:NO;
}

//验证字符串是否为非负整数
-(BOOL)validateIsNonnegativeInteger:(NSString *)targetString{
    
    NSString *regex = @"^\\d+$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

// 验证字符串是否为正整数
-(BOOL)validateIsPositiveInteger:(NSString *)targetString{
    
    NSString *regex = @"^[0-9]*[1-9][0-9]*$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为非正整数
-(BOOL)validateIsNonPositiveInteger:(NSString *)targetString{
    
    NSString *regex = @"^((-\\d+)|(0+))$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为负整数
-(BOOL)validateIsNegativeInteger:(NSString *)targetString{
    
    NSString *regex = @"^-[0-9]*[1-9][0-9]*$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为整数
-(BOOL)validateIsInteger:(NSString *)targetString{
    
    NSString *regex = @"^-?\\d+$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为非负浮点数
-(BOOL)validateIsNonNegativeFloatingPoint:(NSString *)targetString{
    
    NSString *regex = @"^\\d+(\\.\\d+)?$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为正浮点数
-(BOOL)validateIsPositiveFloatingPoint:(NSString *)targetString{
    
    NSString *regex = @"^(([0-9]+\\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\\.[0-9]+)|([0-9]*[1-9][0-9]*))$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为非正浮点数
-(BOOL)validateIsNonPositiveFloatingPoint:(NSString *)targetString{
    
    NSString *regex = @"^((-\\d+(\\.\\d+)?)|(0+(\\.0+)?))$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为负浮点数
-(BOOL)validateIsNegativeFloatingPoint:(NSString *)targetString;{
    
    NSString *regex = @"^(-(([0-9]+\\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\\.[0-9]+)|([0-9]*[1-9][0-9]*)))$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为浮点数
-(BOOL)validateIsFloatingPoint:(NSString *)targetString{
    
    NSString *regex = @"^(-?\\d+)(\\.\\d+)?$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为由26个英文字母组成的字符串
-(BOOL)validateIs26EnglishLetter:(NSString *)targetString{
    
    NSString *regex = @"^[A-Za-z]+$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为由26个英文字母的大写组成的字符串
-(BOOL)validateIs26CapitalEnglishLetter:(NSString *)targetString{
    
    NSString *regex = @"^[A-Z]+$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为由26个英文字母的小写组成的字符串
-(BOOL)validateIs26LowercaseEnglishLetter:(NSString *)targetString{
    
    NSString *regex = @"^[a-z]+$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为由数字和26个英文字母组成的字符串
-(BOOL)validateIsNumbersAnd26EnglishLetter:(NSString *)targetString{
    
    NSString *regex = @"^[A-Za-z0-9]+$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为由数字、26个英文字母或者下划线组成的字符串
-(BOOL)validateIsNumbersAnd26EnglishLetterAndBottomLine:(NSString *)targetString{
    
    NSString *regex = @"^[0-9a-zA-Z_]{1,}$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为有效的邮箱email
-(BOOL)validateIsValidMailbox:(NSString *)targetString{
    
    //NSString *regex = @"^([w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$";
    NSString *regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为有效的电话号码
-(BOOL)validateIsValidPhoneNumber:(NSString *)targetString{
 
    NSString *regex = @"^(\\d+-)?(\\d{4}-?\\d{7}|\\d{3}-?\\d{8}|^\\d{7,8})(-\\d+)?$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为有效的ip地址
-(BOOL)validateIsValidIPAdress:(NSString *)targetString{
    
    NSString *regex = @"^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为中文
-(BOOL)validateIsChineseText:(NSString *)targetString{
   
    NSString *regex = @"^[\u4E00-\u9FA5]*$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为双字节字符(包括汉字在内)
-(BOOL)validateIsDoubleByteCharacter:(NSString *)targetString{
    
    NSString *regex = @"^[\\x00-\\xff]$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为空行
-(BOOL)validateIsBlankLine:(NSString *)targetString{
    
    NSString *regex = @"^(\\n[\\s| ]*\\r)$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是合法的url
-(BOOL)validateIsValidURL:(NSString *)targetString{
    
    NSString *regex = @"^[a-zA-z]+://(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*(\\?\\S*)?$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是符合时间格式：年-月-日
-(BOOL)validateIsDate_YearMonthDay:(NSString *)targetString{
    
    NSString *regex = @"^(\\d{2}|d{4})-((0([1-9]{1}))|(1[1|2]))-(([0-2]([1-9]{1}))|(3[0|1]))$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是符合时间格式：月/日/年
-(BOOL)validateIsDate_MonthDayYear:(NSString *)targetString{
    
    NSString *regex = @"^((0([1-9]{1}))|(1[1|2]))/(([0-2]([1-9]{1}))|(3[0|1]))\\(\\d{2}|\\d{4})$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证字符串是否为HTML标记
-(BOOL)validateIsHTML:(NSString *)targetString{
    
    NSString *regex = @"^(\\<(.*)>.*<\\\1>|<(.*) \\>\\)$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}


//验证帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)
-(BOOL)validateIsLegalUserName:(NSString *)targetString{
    
    NSString *regex = @"^[a-zA-Z][a-zA-Z0-9_]{4,15}$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证用户密码(正确格式为： 以字母开头，长度在5~17 之间，只能包含字符、数字和下划线)
-(BOOL)validateIsLegalPassword:(NSString *)targetString{
   
    NSString *regex = @"^[a-zA-Z]\\w{5,17}$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证是否为国内电话号码
-(BOOL)validateIsDomesticTelephoneNumber:(NSString *)targetString{
 
    NSString *regex = @"^((\\d{3}-|\\d{4}-)?(\\d{8}|\\d{7})?)$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证QQ号
-(BOOL)validateIsValidQQ:(NSString *)targetString{
   
    NSString *regex = @"^[1-9]*[1-9][0-9]*$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证是否只是数字
-(BOOL)validateIsOnlyNumber:(NSString *)targetString{
 
    NSString *regex = @"^[0-9]*$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证只能输入n位的数字
-(BOOL)validateIsOnlyManyNumber:(NSString *)targetString withFigure:(NSInteger)figure{
    
    NSString *regex = [NSString stringWithFormat:@"^\\d{%ld}$",figure];
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证只能输入至少n位的数字
-(BOOL)validateIsOnlyLeastManyNumber:(NSString *)targetString withFigure:(NSInteger)figure{
    
    NSString *regex = [NSString stringWithFormat:@"^\\d{%ld,}$",figure];
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证只能输入m~n位的数字
-(BOOL)validateIsOnlyNumber:(NSString *)targetString fromFigure:(NSInteger)fromFigure toFigure:(NSInteger)toFigure{
    
    NSString *regex = [NSString stringWithFormat:@"^\\d{%ld,%ld}$",fromFigure,toFigure];
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//验证是否包含有 ^%&',;=?$/"等字符
-(BOOL)validateIsSpecialCharacters:(NSString *)targetString{
   
    NSString *regex = @"^([~!/@#$%^&*()-_=+\\|[{}];:\'\",<.>/?]+)$";
    return [self regexPatternResultWithRegex:regex TargetString:targetString];
}

//实例方法自定义正则验证
- (BOOL)validateCustomRegex:(NSString *)customRegex TargetString:(NSString *)targetString{
    
    return [self regexPatternResultWithRegex:customRegex TargetString:targetString];
}


//====================================类方法========================================//

//邮箱
+ (BOOL)validateEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

//手机号码验证
+ (BOOL)validateMobile:(NSString *)mobile
{
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
}

//车牌号验证
+ (BOOL)validateCarNo:(NSString *)carNo
{
    NSString *carRegex = @"^[\u4e00-\u9fa5]{1}[a-zA-Z]{1}[a-zA-Z_0-9]{4}[a-zA-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    NSLog(@"carTest is %@",carTest);
    return [carTest evaluateWithObject:carNo];
}

//车型
+ (BOOL)validateCarType:(NSString *)CarType
{
    NSString *CarTypeRegex = @"^[\u4E00-\u9FFF]+$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",CarTypeRegex];
    return [carTest evaluateWithObject:CarType];
}

//用户名
+ (BOOL)validateUserName:(NSString *)name
{
    NSString *userNameRegex = @"^[A-Za-z0-9]{4,20}+$";
    NSPredicate *userNamePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",userNameRegex];
    BOOL B = [userNamePredicate evaluateWithObject:name];
    return B;
}

//密码
+ (BOOL)validatePassword:(NSString *)passWord
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:passWord];
}

//昵称
+ (BOOL)validateNickname:(NSString *)nickname
{
    NSString *nicknameRegex = @"([\u4e00-\u9fa5]{2,5})(&middot;[\u4e00-\u9fa5]{2,5})*";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    return [passWordPredicate evaluateWithObject:nickname];
}

//身份证号
+ (BOOL)validateIdentityCard: (NSString *)identityCard
{
    BOOL flag;
    if (identityCard.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:identityCard];
}

//银行卡
+ (BOOL)validateBankCardNumber: (NSString *)bankCardNumber
{
    BOOL flag;
    if (bankCardNumber.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{15,30})";
    NSPredicate *bankCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [bankCardPredicate evaluateWithObject:bankCardNumber];
}

//银行卡后四位
+ (BOOL)validateBankCardLastNumber: (NSString *)bankCardNumber
{
    BOOL flag;
    if (bankCardNumber.length != 4) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{4})";
    NSPredicate *bankCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [bankCardPredicate evaluateWithObject:bankCardNumber];
}

//CVN
+ (BOOL)validateCVNCode: (NSString *)cvnCode
{
    BOOL flag;
    if (cvnCode.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{3})";
    NSPredicate *cvnCodePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [cvnCodePredicate evaluateWithObject:cvnCode];
}

//month
+ (BOOL)validateMonth: (NSString *)month
{
    BOOL flag;
    if (!(month.length == 2)) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"(^(0)([0-9])$)|(^(1)([0-2])$)";
    NSPredicate *monthPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [monthPredicate evaluateWithObject:month];
}

//year
+ (BOOL) validateYear: (NSString *)year
{
    BOOL flag;
    if (!(year.length == 2)) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^([1-3])([0-9])$";
    NSPredicate *yearPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [yearPredicate evaluateWithObject:year];
}

//verifyCode
+ (BOOL) validateVerifyCode: (NSString *)verifyCode
{
    BOOL flag;
    if (!(verifyCode.length == 6)) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{6})";
    NSPredicate *verifyCodePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [verifyCodePredicate evaluateWithObject:verifyCode];
}

// 类方法自定义正则验证
+ (BOOL)validateCustomRegex:(NSString *)customRegex TargetString:(NSString *)targetString{
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",customRegex];
    return [predicate evaluateWithObject:targetString];
}

@end
