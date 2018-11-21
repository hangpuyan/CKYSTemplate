//
//  CKYSLoginViewController.m
//  SystemInfo
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSLoginViewController.h"
#import "CKYSDeviceInfoHelper.h"
#import "CKTimerHelper.h"

#import "UIViewController+PushViewController.h"
#import "UIViewController+NavLeftItemBack.h"
#import "UIViewController+PopViewController.h"
#import "UIImageView+Category.h"
#import "UIButton+Title.h"
#import "NSString+PhoneNumber.h"
#import "CKYSLoginView.h"

@interface CKYSLoginViewController ()

<CKYSLoginViewDelegate>

@end

@implementation CKYSLoginViewController {
    CKYSLoginView *_loginView;
}

#pragma mark - interface

+ (void)pushToLoginViewControllerFromViewController:(UIViewController *)viewController {
    CKYSLoginViewController *loginPage = [[CKYSLoginViewController alloc] init];
    [CKYSLoginViewController pushToObjViewController:loginPage animated:YES fromViewController:viewController];
}

+ (void)presentToLoginViewControllerFromViewController:(UIViewController *)viewController {
    CKYSLoginViewController *loginPage = [[CKYSLoginViewController alloc] init];
    [viewController presentViewController:loginPage animated:YES completion:^{
    }];
}

#pragma mark - life

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self  private_initUI];
}


#pragma mark - CKYSLoginViewDelegate
- (void)loginViewActionType:(CKYS_LOGIN_ACTION_TYPE)actionType {
    if (actionType==CKYS_LOGIN_ACTION_TYPE_INPUT_EMOJI) {
        NSLog(@"CKYS_LOGIN_ACTION_TYPE_INPUT_EMOJI");
    } else if (actionType==CKYS_LOGIN_ACTION_TYPE_PHONE_NUMBER_ERROR) {
        NSLog(@"CKYS_LOGIN_ACTION_TYPE_PHONE_NUMBER_ERROR");
    } else if (actionType==CKYS_LOGIN_ACTION_TYPE_INPUT_PHONE_NUMBER_NULL) {
        NSLog(@"CKYS_LOGIN_ACTION_TYPE_INPUT_PHONE_NUMBER_NULL");
    } else if (actionType==CKYS_LOGIN_ACTION_TYPE_INPUT_PASSWORD_NULL) {
        NSLog(@"CKYS_LOGIN_ACTION_TYPE_INPUT_PASSWORD_NULL");
    } else if (actionType==CKYS_LOGIN_ACTION_TYPE_LOGIN) {
        NSLog(@"CKYS_LOGIN_ACTION_TYPE_LOGIN");
    }
}

#pragma mark - private action
- (void)private_navLeftItemBackAction:(UIButton *)sender {
    [self.class objViewController:self popViewControllerAnimated:YES];
}

#pragma mark - initUI

- (void)private_initUI {
    [self private_initLeftItem];
    _loginView = [[CKYSLoginView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) delegate:self];
    [self.view addSubview:_loginView];
}

//MARK: - 页面返回按钮的创建demo
- (void)private_initLeftItem {
    [self initLeftItemWithTargrt:self action:@selector(private_navLeftItemBackAction:) parentView:self.navigationController.navigationBar];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.leftItem];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"self%@",self);
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
