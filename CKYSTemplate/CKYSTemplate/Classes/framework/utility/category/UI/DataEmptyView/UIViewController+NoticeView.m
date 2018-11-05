//
//  UIViewController+NoticeView.m
//  
//
//  Created by Yan on 2018/7/9.
//

#import "UIViewController+NoticeView.h"
#import "objc/runtime.h"
#import <JGProgressHUD.h>

@interface UIViewController ()

@property (nonatomic, strong) UIView *viewNetError;

@end

@implementation UIViewController (NoticeView)

static const void *CKYSNoticeViewKey = &CKYSNoticeViewKey;

- (void)setViewNetError:(UIView *)viewNetError {
    objc_setAssociatedObject(self, CKYSNoticeViewKey, viewNetError, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)viewNetError {
    return  objc_getAssociatedObject(self, CKYSNoticeViewKey);
}


- (void)initView {
   
    // 增加网络错误时提示
    self.viewNetError = [[UIView alloc] init];
}

- (void)showNoticeView:(NSString *)title {
    if (!self.viewNetError) {
        [self initView];
    }
    if (!title.length || [title isKindOfClass:[NSNull class]]){
        return;
    }
    
}

@end
