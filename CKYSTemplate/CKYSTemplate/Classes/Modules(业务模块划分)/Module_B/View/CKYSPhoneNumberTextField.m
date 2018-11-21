//
//  CKYSPhoneNumberTextField.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSPhoneNumberTextField.h"
#import "NSString+Emoji.h"

@interface CKYSPhoneNumberTextField () <UITextFieldDelegate>

@end

@implementation CKYSPhoneNumberTextField

#define CKYS_PHONE_NUMBER_TEXT_COUNT_LIMIT 11

#pragma mark -  由于业务逻辑有区别，所以单独去判断 电话号码长度 外层去判断电话号码 格式正确与否
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if (textField.text.length>=CKYS_PHONE_NUMBER_TEXT_COUNT_LIMIT && string.length) {
        return NO;
    }
    
    return [self loginTextField:textField shouldChangeCharactersInRange:range replacementString:string];
}

- (instancetype)initWithFrame:(CGRect)frame
                 keyboardType:(UIKeyboardType)keyboardType
                    tintColor:(UIColor *)tintColor
                 cornerRadius:(CGFloat)cornerRadius
                  borderWidth:(CGFloat)borderWidth
                  borderColor:(UIColor *)borderColor
                masksToBounds:(BOOL)masksToBounds
                  placeholder:(NSString *)placeholder
              placeholderFont:(UIFont *)placeholderFont
         placeholderTextColor:(UIColor *)placeholderTextColor
                returnKeyType:(UIReturnKeyType)returnKeyType
              clearButtonMode:(UITextFieldViewMode)clearButtonMode
                     leftView:(UIView *)leftView
                 leftViewMode:(UITextFieldViewMode)leftViewMode {
    self = [super initWithFrame:frame keyboardType:keyboardType tintColor:tintColor cornerRadius:cornerRadius borderWidth:borderWidth borderColor:borderColor masksToBounds:masksToBounds placeholder:placeholder placeholderFont:placeholderFont placeholderTextColor:placeholderTextColor returnKeyType:returnKeyType clearButtonMode:clearButtonMode leftView:leftView leftViewMode:leftViewMode];
    if (self) {
        self.delegate = self;
    }
    return self;
}

@end
