//
//  CKYSTextfiledSearch.m
//  SystemInfo
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSTextfiledSearch.h"

@implementation CKYSTextfiledSearch

// 修改文本展示区域，一般跟editingRectForBounds一起重写
- (CGRect)textRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+30, bounds.origin.y, bounds.size.width-50, bounds.size.height);//更好理解些
    return inset;
}

// 重写来编辑区域，可以改变光标起始位置，以及光标最右到什么地方，placeHolder的位置也会改变
- (CGRect)editingRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+30, bounds.origin.y, bounds.size.width-50, bounds.size.height);//更好理解些
    return inset;
}

@end
