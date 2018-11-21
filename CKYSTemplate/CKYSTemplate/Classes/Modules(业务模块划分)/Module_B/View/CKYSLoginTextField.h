//
//  CKYSLoginTextField.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSTextField.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CKYSLoginTextFieldDelegate <NSObject>

- (void)loginTextFieldUserInputEmojiHandle;

@end

/** 登录 文本输入框 */
@interface CKYSLoginTextField : CKYSTextField

/**
 过滤登录输入框中的文本
 1. 表情
 2. 空字符串
 */
- (BOOL)loginTextField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

- (void)setLoginTextfieldDelegate:(id<CKYSLoginTextFieldDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
