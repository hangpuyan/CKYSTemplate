//
//  CKYSSearchBar.m
//  CKYSPlatform
//
//  Created by mark.z on 2018/7/10.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKYSSearchBar.h"
#import "NSString+Emoji.h"

@interface CKYSSearchBar ()

@property (nonatomic, copy) NSString *lastText;

@end

@implementation CKYSSearchBar

+ (instancetype)CkysSearchBar
{
    return [[self alloc]init];
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        self.tintColor = [UIColor blueColor];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ckys_bc_search_button_image_normal"]];
        imgView.contentMode = UIViewContentModeCenter;
        imgView.size = CGSizeMake(30, 30);

        self.placeholder = @"请输入您要查询的内容";
        [self setValue:[UIFont boldSystemFontOfSize:13] forKeyPath:@"_placeholderLabel.font"];
        [self setValue:CKYS_Color(153, 153, 153) forKeyPath:@"_placeholderLabel.textColor"];
        self.leftView = imgView;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.returnKeyType =UIReturnKeySearch;
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        
//        self.delegate = self;
//        [self setup];
        
        self.lastText = self.text;

    }
    
    return self;
}

- (void)setup
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:UITextFieldTextDidChangeNotification object:self];
}

- (void)textDidChange:(NSNotification *)notif
{
    UITextView *textField = notif.object;
    NSString *addText = [textField.text stringByReplacingOccurrencesOfString:self.lastText withString:@""];
    
    if ([addText isNineKeyBoard] ){
        self.lastText = textField.text;
    }else{
        if ([addText hasEmoji] || [addText stringContainsEmoji]){
            textField.text = self.lastText;
            [[NSNotificationCenter defaultCenter]postNotificationName:@"kTextContainEmojiNotification" object:nil];
        }
    }
}

@end
