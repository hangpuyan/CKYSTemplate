//
//  UIViewController+NoticeView.m
//  
//
//  Created by Yan on 2018/7/9.
//

#import "UIViewController+NoticeView.h"
#import "objc/runtime.h"
#import <JGProgressHUD.h>
#import "NSNilObject.h"

@interface UIViewController ()

@property (nonatomic, strong) JGProgressHUD *viewNetError;

@end

@implementation UIViewController (NoticeView)

static const void *CKYSNoticeViewKey = &CKYSNoticeViewKey;

- (void)setViewNetError:(JGProgressHUD *)viewNetError {
    objc_setAssociatedObject(self, CKYSNoticeViewKey, viewNetError, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (JGProgressHUD *)viewNetError {
    return  objc_getAssociatedObject(self, CKYSNoticeViewKey);
}


- (void)initView {
   
    // 增加网络错误时提示
    self.viewNetError = [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    self.viewNetError.indicatorView = nil;
    self.viewNetError.userInteractionEnabled = NO;
    self.viewNetError.position = JGProgressHUDPositionBottomCenter;
    self.viewNetError.marginInsets = (UIEdgeInsets)
    {
        .top = 0.0f,
        .bottom = 60.0f,
        .left = 0.0f,
        .right = 0.0f,
    };
}

- (void)showNoticeView:(NSString *)title {
    if (!self.viewNetError) {
        [self initView];
    }
    if ([NSNilObject isNilOrNullObject:title]){
        return;
    }
    dispatch_async(dispatch_get_main_queue(), ^{        
        if (self.viewNetError && !self.viewNetError.visible) {
            self.viewNetError.textLabel.text = title;
            [self.viewNetError showInView:[UIApplication sharedApplication].keyWindow];
            [self.viewNetError dismissAfterDelay:1.5f];
        }
    });
}

@end
