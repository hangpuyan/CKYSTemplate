//
//  CKYSTextField.h
//  SystemInfo
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

 /**
  系统文本输入框 封装 子类直接继承即可
  每个业务线根据自己需求去创建CKYSTextField子类 ，在文本输入代理回调中去但都处理
  1. 登录需要判断电话号码
  2. 搜索需要判断文本内容格式
  3. 每个输入框的文本内容位置可能存在差异化 单独处理
  */
@interface CKYSTextField : UITextField

/**
 系统文本输入框

 @param frame 位置
 @param keyboardType 键盘类型（枚举 ： 数字键盘...）
 @param tintColor 输入框整体颜色
 @param cornerRadius 圆角
 @param borderWidth 圆角线条宽度
 @param borderColor 圆角颜色
 @param masksToBounds 是否切掉圆角
 @param placeholder 默认文本
 @param placeholderFont 默认文本字体
 @param placeholderTextColor 默认文本颜色
 @param returnKeyType 回车键类型 ：搜索 完成...
 @param clearButtonMode 清除按钮出现时机
 @param leftView 左视图
 @param leftViewMode 左视图 模式
 @return 输入框
 */
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
                 leftViewMode:(UITextFieldViewMode)leftViewMode;

//MARK: 子类
// 修改文本展示区域，一般跟editingRectForBounds一起重写
- (CGRect)textRectForBounds:(CGRect)bounds;

// 重写来编辑区域，可以改变光标起始位置，以及光标最右到什么地方，placeHolder的位置也会改变
- (CGRect)editingRectForBounds:(CGRect)bounds;

@end

NS_ASSUME_NONNULL_END
