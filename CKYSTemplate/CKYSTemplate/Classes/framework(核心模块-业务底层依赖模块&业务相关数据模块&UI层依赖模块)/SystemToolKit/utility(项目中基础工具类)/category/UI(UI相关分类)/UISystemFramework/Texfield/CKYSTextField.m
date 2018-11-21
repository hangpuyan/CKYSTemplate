//
//  CKYSTextField.m
//  SystemInfo
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSTextField.h"

@implementation CKYSTextField

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
    
    self = [super initWithFrame:frame];
    if (self) {
        self.keyboardType = keyboardType;
        self.tintColor = tintColor;
        self.layer.cornerRadius = cornerRadius;
        self.layer.borderWidth = borderWidth;
        self.layer.borderColor = borderColor.CGColor;
        self.layer.masksToBounds = masksToBounds;
        
        self.placeholder = placeholder;
        [self setValue:placeholderFont forKeyPath:@"_placeholderLabel.font"];
        [self setValue:placeholderTextColor forKeyPath:@"_placeholderLabel.textColor"];
        self.returnKeyType = returnKeyType;
        self.clearButtonMode = clearButtonMode;
        self.leftView = leftView;
        self.leftViewMode = leftViewMode;
    }
    return self;
}

// 修改文本展示区域，一般跟editingRectForBounds一起重写
- (CGRect)textRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+10, bounds.origin.y, bounds.size.width-25, bounds.size.height);//更好理解些
    return inset;
}

// 重写来编辑区域，可以改变光标起始位置，以及光标最右到什么地方，placeHolder的位置也会改变
- (CGRect)editingRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+10, bounds.origin.y, bounds.size.width-25, bounds.size.height);//更好理解些
    return inset;
}

@end
