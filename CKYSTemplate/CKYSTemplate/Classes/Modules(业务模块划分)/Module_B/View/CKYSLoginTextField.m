//
//  CKYSLoginTextField.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSLoginTextField.h"
#import "NSString+Emoji.h"

@interface CKYSLoginTextField ()

<UITextFieldDelegate>

@end

@implementation CKYSLoginTextField {
   __weak id<CKYSLoginTextFieldDelegate> _loginTextfieldDelegate;
}

- (void)setLoginTextfieldDelegate:(id<CKYSLoginTextFieldDelegate>)delegate {
    _loginTextfieldDelegate = delegate;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
        
    return [self loginTextField:textField shouldChangeCharactersInRange:range replacementString:string];
}


- (BOOL)loginTextField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    //过滤空格
    NSString *tem = [[string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]componentsJoinedByString:@""];
    if (![string isEqualToString:tem]) {
        return NO;
    }
    
    // 不让输入表情
    if ([textField isFirstResponder]) {
        if ([[[textField textInputMode] primaryLanguage] isEqualToString:@"emoji"] || ![[textField textInputMode] primaryLanguage]) {
            if (string.length) {
                if (_loginTextfieldDelegate && [_loginTextfieldDelegate respondsToSelector:@selector(loginTextFieldUserInputEmojiHandle)]) {
                    [_loginTextfieldDelegate loginTextFieldUserInputEmojiHandle];
                }
                return NO;
            } else {
                return YES;
            }
        }
    }
    
    if ([string isNineKeyBoard] ){
        return YES;
    }else{
        if ([string hasEmoji] || [string stringContainsEmoji]){
            if (_loginTextfieldDelegate && [_loginTextfieldDelegate respondsToSelector:@selector(loginTextFieldUserInputEmojiHandle)]) {
                [_loginTextfieldDelegate loginTextFieldUserInputEmojiHandle];
            }
            return NO;
        }
    }
    return YES;
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

#pragma mark -
// 修改文本展示区域，一般跟editingRectForBounds一起重写
- (CGRect)textRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+35, bounds.origin.y, bounds.size.width-50, bounds.size.height);//更好理解些
    return inset;
}

// 重写来编辑区域，可以改变光标起始位置，以及光标最右到什么地方，placeHolder的位置也会改变
- (CGRect)editingRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+35, bounds.origin.y, bounds.size.width-50, bounds.size.height);//更好理解些
    return inset;
}

@end
