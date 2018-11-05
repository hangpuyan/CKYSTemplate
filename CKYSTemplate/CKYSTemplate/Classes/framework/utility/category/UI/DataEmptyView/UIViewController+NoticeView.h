//
//  UIViewController+NoticeView.h
//  
//
//  Created by Yan on 2018/7/9.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIViewController (NoticeView)

@property (nonatomic, strong, readonly) UIView *viewNetError;

- (void)showNoticeView:(NSString *)title;

@end
