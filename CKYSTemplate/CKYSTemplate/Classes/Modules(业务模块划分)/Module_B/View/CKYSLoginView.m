//
//  CKYSLoginView.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSLoginView.h"
#import "CKYSLoginTextField.h"
#import "CKYSPhoneNumberTextField.h"
#import "NSString+PhoneNumber.h"
#import "UIImageView+Category.h"
#import "UIButton+Title.h"
#import "UIButton+Image.h"

@interface CKYSLoginView ()

<CKYSLoginTextFieldDelegate>

@end

@implementation CKYSLoginView {
    CKYSPhoneNumberTextField *_textfieldUserPhoneNumber;
    CKYSLoginTextField *_textfieldPassword;
    UIButton *_loginButton;
    __weak id<CKYSLoginViewDelegate> _delegate;
}

- (instancetype)initWithFrame:(CGRect)frame delegate:(id<CKYSLoginViewDelegate>)delegate {
    _delegate = delegate;
    return [self initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self  private_initUI];
    }
    return self;
}

#pragma mark - CKYSLoginTextFieldDelegate
- (void)loginTextFieldUserInputEmojiHandle {
    [self private_responseDelegateActionType:CKYS_LOGIN_ACTION_TYPE_INPUT_EMOJI];
}

#pragma mark - private action
- (void)private_navLeftItemBackAction:(UIButton *)sender {

}

- (void)private_responseDelegateActionType:(CKYS_LOGIN_ACTION_TYPE)actionType {
    if (_delegate && [_delegate respondsToSelector:@selector(loginViewActionType:)]) {
        [_delegate loginViewActionType:actionType];
    }
}

- (void)private_loginButtonAction:(UIButton *)sender {
    if (!_textfieldUserPhoneNumber.text.length) {
        [self private_responseDelegateActionType:CKYS_LOGIN_ACTION_TYPE_INPUT_PHONE_NUMBER_NULL];
    } else if (!_textfieldPassword.text.length) {
        [self private_responseDelegateActionType:CKYS_LOGIN_ACTION_TYPE_INPUT_PASSWORD_NULL];
    } else if (![NSString checkPhoneNumber:_textfieldUserPhoneNumber.text] && _textfieldUserPhoneNumber.text.length) {
        [self private_responseDelegateActionType:CKYS_LOGIN_ACTION_TYPE_PHONE_NUMBER_ERROR];
    } else if (_textfieldUserPhoneNumber.text.length && _textfieldPassword.text.length) {
        [self private_responseDelegateActionType:CKYS_LOGIN_ACTION_TYPE_LOGIN];
    }
}

- (void)private_initUI {
    [self private_initLoginTextfield];
    [self private_initLoginButton];
}

- (void)private_initLoginTextfield {
    
    //MARK: - 输入框 左侧图标的创建demo （UIImageView 创建demo）
    UIImageView *imageViewPhoneNumberLeftView = [UIImageView imageViewWithImageName:@"ckys_login_user_head_image" rect:CGRectMake(10, 0, 16, 19) backgroundColor:[UIColor clearColor] parentView:_textfieldUserPhoneNumber];
    imageViewPhoneNumberLeftView.frame = CGRectMake(10, 0, 30, 21);
    imageViewPhoneNumberLeftView.contentMode= UIViewContentModeCenter;
    
    //MARK: - 登录 电话号码输入框的创建demo
    _textfieldUserPhoneNumber = [[CKYSPhoneNumberTextField alloc] initWithFrame:CGRectMake(100, 100, [UIScreen mainScreen].bounds.size.width-200, 44) keyboardType:UIKeyboardTypeNumberPad tintColor:[UIColor grayColor] cornerRadius:3 borderWidth:1 borderColor:[UIColor grayColor] masksToBounds:YES placeholder:@"请输入手机号码" placeholderFont:[UIFont systemFontOfSize:15] placeholderTextColor:[UIColor grayColor] returnKeyType:UIReturnKeyDefault clearButtonMode:UITextFieldViewModeWhileEditing leftView:imageViewPhoneNumberLeftView leftViewMode:UITextFieldViewModeAlways];
    [self addSubview:_textfieldUserPhoneNumber];
    
    UIImageView *imageViewPasswordLeftView = [UIImageView imageViewWithImageName:@"ckys_login_user_phone_number_image" rect:CGRectMake(10, 0, 14, 21) backgroundColor:[UIColor clearColor] parentView:_textfieldPassword];
    imageViewPasswordLeftView.contentMode = UIViewContentModeCenter;
    imageViewPasswordLeftView.frame = CGRectMake(10, 0, 30, 21);
    
    //MARK: - 登录 密码输入框的创建demo
    _textfieldPassword = [[CKYSLoginTextField alloc] initWithFrame:CGRectMake(100, 180, [UIScreen mainScreen].bounds.size.width-200, 44) keyboardType:UIKeyboardTypeURL tintColor:[UIColor grayColor] cornerRadius:3 borderWidth:1 borderColor:[UIColor grayColor] masksToBounds:YES placeholder:@"请输入账户密码" placeholderFont:[UIFont systemFontOfSize:15] placeholderTextColor:[UIColor grayColor] returnKeyType:UIReturnKeyDefault clearButtonMode:UITextFieldViewModeNever leftView:imageViewPasswordLeftView leftViewMode:UITextFieldViewModeAlways];
    UIButton *passwordRightButton = [UIButton buttonWithImageNormalString:@"ckys_login_user_phone_number_image" imageHilightString:@"ckys_login_user_phone_number_image" imageDisenabledString:@"ckys_login_user_phone_number_image" imageBgNormalString:@"" imageBgHilightString:@"" imageBgDisenabledString:@"" backgroundColor:[UIColor clearColor] tag:0 rect:CGRectMake(0, 0, 30, 30) targrt:self action:@selector(private_passwordRightButton:) forControlEvents:UIControlEventTouchUpInside];
    [passwordRightButton setImage:[UIImage imageNamed:@"ckys_login_user_head_image"] forState:UIControlStateSelected];
    passwordRightButton.contentMode = UIViewContentModeCenter;
    _textfieldPassword.rightView = passwordRightButton;
    _textfieldPassword.rightViewMode = UITextFieldViewModeWhileEditing;
    [_textfieldPassword setLoginTextfieldDelegate:self];
    [self addSubview:_textfieldPassword];
}

- (void)private_passwordRightButton:(UIButton *)sender {
    sender.selected = !sender.selected;
    _textfieldPassword.secureTextEntry = sender.selected;
}

//MARK: - 按钮的创建demo
- (void)private_initLoginButton {
    _loginButton = [UIButton buttonWithTitle:@"登录" titleFont:18 titleColorNormal:[UIColor whiteColor] titleColorHilight:[UIColor lightGrayColor] titleColorDisable:[UIColor lightGrayColor] backgroundImageNoraml:@"" backgroundImageHilight:@"" backgroundImageDisable:@"" backgroundColor:[UIColor redColor] cornerRadius:3 enabled:YES rect:CGRectMake(0.5*([UIScreen mainScreen].bounds.size.width-200), 260, 200, 44) Targrt:self action:@selector(private_loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_loginButton];
}

@end
