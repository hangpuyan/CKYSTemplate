//
//  UIViewController+NoticeView.h
//  
//
//  Created by Yan on 2018/7/9.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class JGProgressHUD;

@interface UIViewController (NoticeView)

@property (nonatomic, strong, readonly) JGProgressHUD *viewNetError;

- (void)showNoticeView:(NSString *)title;

@end
