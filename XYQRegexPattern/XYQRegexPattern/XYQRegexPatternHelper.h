//
//  XYQRegexPatternHelper.h
//  RegexPatternHelper
//
//  Created by 夏远全 on 16/12/10.
//  Copyright © 2016年 xiayuanquan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYQRegexPatternHelper : NSObject

/**
 *  验证字符串是否为空值
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsEmpty:(NSString *)targetString;

/**
 *  验证字符串是否为非负整数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNonnegativeInteger:(NSString *)targetString;

/**
 *  验证字符串是否为正整数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsPositiveInteger:(NSString *)targetString;

/**
 *  验证字符串是否为非正整数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNonPositiveInteger:(NSString *)targetString;

/**
 *  验证字符串是否为负整数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNegativeInteger:(NSString *)targetString;

/**
 *  验证字符串是否为整数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsInteger:(NSString *)targetString;

/**
 *  验证字符串是否为非负浮点数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNonNegativeFloatingPoint:(NSString *)targetString;

/**
 *  验证字符串是否为正浮点数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsPositiveFloatingPoint:(NSString *)targetString;

/**
 *  验证字符串是否为非正浮点数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNonPositiveFloatingPoint:(NSString *)targetString;

/**
 *  验证字符串是否为负浮点数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNegativeFloatingPoint:(NSString *)targetString;

/**
 *  验证字符串是否为浮点数
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsFloatingPoint:(NSString *)targetString;

/**
 *  验证字符串是否为由26个英文字母组成的字符串
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIs26EnglishLetter:(NSString *)targetString;

/**
 *  验证字符串是否为由26个英文字母的大写组成的字符串
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIs26CapitalEnglishLetter:(NSString *)targetString;

/**
 *  验证字符串是否为由26个英文字母的小写组成的字符串
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIs26LowercaseEnglishLetter:(NSString *)targetString;

/**
 *  验证字符串是否为由数字和26个英文字母组成的字符串
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNumbersAnd26EnglishLetter:(NSString *)targetString;

/**
 *  验证字符串是否为由数字、26个英文字母或者下划线组成的字符串
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsNumbersAnd26EnglishLetterAndBottomLine:(NSString *)targetString;

/**
 *  验证字符串是否为合法的邮箱email
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsValidMailbox:(NSString *)targetString;

/**
 *  验证字符串是否为合法的电话号码
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsValidPhoneNumber:(NSString *)targetString;

/**
 *  验证字符串是否为合法的IP地址
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsValidIPAdress:(NSString *)targetString;

/**
 *  验证字符串是否为中文
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsChineseText:(NSString *)targetString;

/**
 *  验证字符串是否为双字节字符(包括汉字在内)
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsDoubleByteCharacter:(NSString *)targetString;

/**
 *  验证字符串是否为空行
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsBlankLine:(NSString *)targetString;

/**
 *  验证字符串是合法的url
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsValidURL:(NSString *)targetString;

/**
 *  验证字符串是符合时间格式：年-月-日
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsDate_YearMonthDay:(NSString *)targetString;

/**
 *  验证字符串是符合时间格式：月/日/年
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsDate_MonthDayYear:(NSString *)targetString;

/**
 *  验证字符串是否为HTML标记
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsHTML:(NSString *)targetString;

/**
 *  验证帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsLegalUserName:(NSString *)targetString;

/**
 *  验证用户密码(正确格式为： 以字母开头，长度在5~17 之间，只能包含字符、数字和下划线)
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsLegalPassword:(NSString *)targetString;


/**
 *  验证是否为国内电话号码
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsDomesticTelephoneNumber:(NSString *)targetString;

/**
 *  验证QQ号
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsValidQQ:(NSString *)targetString;

/**
 *  验证是否只是数字
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsOnlyNumber:(NSString *)targetString;

/**
 *  验证只能输入n位的数字
 *
 *  @param targetString 目标字符串
 *  @param figure       位数
 *  @return YES/NO
 */
-(BOOL)validateIsOnlyManyNumber:(NSString *)targetString withFigure:(NSInteger)figure;

/**
 *  验证只能输入至少n位的数字
 *
 *  @param targetString 目标字符串
 *  @param figure       位数
 *  @return YES/NO
 */
-(BOOL)validateIsOnlyLeastManyNumber:(NSString *)targetString withFigure:(NSInteger)figure;

/**
 *  验证只能输入m~n位的数字
 *
 *  @param targetString 目标字符串
 *  @param fromFigure   m位
 *  @param toFigure     n位
 *  @return YES/NO
 */
-(BOOL)validateIsOnlyNumber:(NSString *)targetString fromFigure:(NSInteger)fromFigure toFigure:(NSInteger)toFigure;

/**
 *  验证是否包含有 ^%&',;=?$/"等字符
 *
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
-(BOOL)validateIsSpecialCharacters:(NSString *)targetString;

/**
 *  实例方法自定义正则验证
 *
 *  @param customRegex  自定义的正则表达式
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
- (BOOL)validateCustomRegex:(NSString *)customRegex TargetString:(NSString *)targetString;




//====================================类方法========================================//
/**
 *  验证邮箱
 *
 *  @param email 邮箱
 *
 *  @return YES/NO
 */
+ (BOOL)validateEmail:(NSString *)email;

/**
 *  验证手机号
 *
 *  @param mobile 手机号
 *
 *  @return YES/NO
 */
+ (BOOL)validateMobile:(NSString *)mobile;

/**
 *  验证车牌号
 *
 *  @param carNo 车牌号
 *
 *  @return YES/NO
 */
+ (BOOL)validateCarNo:(NSString *)carNo;

/**
 *  验证车型
 *
 *  @param CarType 车型
 *
 *  @return YES/NO
 */
+ (BOOL)validateCarType:(NSString *)CarType;

/**
 *  验证用户名
 *
 *  @param name 用户名
 *
 *  @return YES/NO
 */
+ (BOOL)validateUserName:(NSString *)name;

/**
 *  验证密码
 *
 *  @param passWord 密码
 *
 *  @return YES/NO
 */
+ (BOOL)validatePassword:(NSString *)passWord;

/**
 *  验证昵称
 *
 *  @param nickname 昵称
 *
 *  @return YES/NO
 */
+ (BOOL)validateNickname:(NSString *)nickname;

/**
 *  验证身份证
 *
 *  @param identityCard 身份证
 *
 *  @return YES/NO
 */
+ (BOOL)validateIdentityCard:(NSString *)identityCard;

/**
 *  验证银行卡号
 *
 *  @param bankCardNumber 银行卡号
 *
 *  @return YES/NO
 */
+ (BOOL)validateBankCardNumber:(NSString *)bankCardNumber;

/**
 *  验证银行卡后四位
 *
 *  @param bankCardNumber 银行卡后四位
 *
 *  @return YES/NO
 */
+ (BOOL)validateBankCardLastNumber:(NSString *)bankCardNumber;

/**
 *  验证CVN
 *
 *  @param cvnCode CVN
 *
 *  @return YES/NO
 */
+ (BOOL)validateCVNCode:(NSString *)cvnCode;

/**
 *  验证月份
 *
 *  @param month 月份
 *
 *  @return YES/NO
 */
+ (BOOL)validateMonth:(NSString *)month;

/**
 *  验证年
 *
 *  @param year 年
 *
 *  @return YES/NO
 */
+ (BOOL)validateYear:(NSString *)year;

/**
 *  验证验证码
 *
 *  @param verifyCode 验证码
 *
 *  @return YES/NO
 */
+ (BOOL)validateVerifyCode:(NSString *)verifyCode;

/**
 *  类方法自定义正则验证
 *
 *  @param customRegex  自定义的正则表达式
 *  @param targetString 目标字符串
 *
 *  @return YES/NO
 */
+ (BOOL)validateCustomRegex:(NSString *)customRegex TargetString:(NSString *)targetString;

@end
