//
//  A_ViewController.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/7.
//  Copyright © 2018 YY. All rights reserved.
//

#import "A_ViewController.h"

#import "UIViewController+NavigationBarHidden.h"
#import "UIViewController+NavLeftItemBack.h"
#import "UIViewController+PopViewController.h"
#import "UIViewController+PushViewController.h"
#import "UIViewController+NavigationBarStatusBar.h"

#import "A_TableView.h"
#import "A_TableViewCell.h"
#import "A_VideoView.h"
#import "A_TableViewCellConst.h"

#import "Masonry.h"
#import "ScreenConst.h"

#import "A_Service.h"
#import "A_ServiceResult.h"
#import "A_ServiceParameter.h"
#import "A_Item.h"
#import "A_ServicePageSizeConst.h"

#import "HPNetworkStatusManager.h"

#import "LoginNotificationHelper.h"

#import "LoginService.h"
#import "LoginServiceParameter.h"
#import "LoginServiceResult.h"
#import "LoginDataHelper.h"
#import "LoginDataItem.h"

#import "UIButton+Title.h"
#import "CKYSLoginViewController.h"

@interface A_ViewController ()

@end

@implementation A_ViewController {
    __weak id<A_ViewControllerDelegate> _delegate;
    id _parameter;
    NSMutableArray <A_Item *>*dataArrayMinePage;
    A_TableView *_sourceCenterMainPageTableView;
    UIButton *_loginButton;
}

#pragma mark - A_ViewControllerInputProtocol

+ (void)jumpTo_A_PageFromViewController:(UIViewController *)viewController delegate:(id<A_ViewControllerDelegate>)delegate parameter:(id)parameter {
    
    A_ViewController *aPage = [[A_ViewController alloc] initWithDelegate:delegate parameter:parameter];
    [A_ViewController pushToObjViewController:aPage animated:YES fromViewController:viewController];
}

#pragma mark - A_ViewControllerInstanceProtocol

- (instancetype)initWithDelegate:(id<A_ViewControllerDelegate>)delegate parameter:(id)parameter {
    self = [super init];
    if (self) {
#warning todo...init
        _delegate = delegate;
        _parameter = parameter;
    }
    return self;
}

#pragma mark - life

- (void)viewDidLoad {
    [super viewDidLoad];
    [self private_initUI];
    [self private_get_module_A_DataFromServer];
    [[HPNetworkStatusManager manager] registerNetworkChangeListener:self sel:@selector(private_netWorkStatusChangedMontor:)];
    [LoginNotificationHelper registerLoginSuccessNotificationObserver:self selector:@selector(private_notificationLoginSuccess) object:nil];
    [self private_loginAction];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
//    [self setObjViewControllerNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
//    [self setObjViewControllerNavigationBarHidden:NO];
}

#pragma mark - 网络状态监控使用
- (void)private_netWorkStatusChangedMontor:(HPNetworkStatus *)sender {
    if (sender.networkAvailable) {
        
    } else if (sender.wifiAvailale) {
        
    } else if (sender.wwanAvailable) {
        
    }
    //获取当前网络状态
    HPNetworkStatus *currentNetworkStatus = [HPNetworkStatusManager manager].currentNetworkStatus;
}

#pragma mark - 模拟登录成功
- (void)private_loginAction {
    LoginServiceParameter *loginServiceParameter = [[LoginServiceParameter alloc] initWithUserLoginId:@"" password:@""];
    [LoginService loginRequestServerWithParameter:loginServiceParameter completeHandle:^(LoginServiceResult * _Nonnull loginServiceResult) {
        if (loginServiceResult.isRequestServiceSuccess) {
            LoginDataItem *loginDataItem = [[LoginDataItem alloc] init];
            [LoginDataHelper saveLoginDataItem:loginDataItem];
            [LoginNotificationHelper postLoginSuccessNotification:@{} object:@""];
        }
    } failure:^(NSError * _Nonnull error) {
        
    }];
}

#pragma mark - 登录成功
- (void)private_notificationLoginSuccess {

#warning todo... refresh UI
    
}

#pragma mark - private

- (void)private_navLeftItemBackAction:(UIButton *)sender {
    [self.class objViewController:self popViewControllerAnimated:YES];
    if (_delegate && [_delegate respondsToSelector:@selector(a_actionCompleteHandleWithParameter:)]) {
        [_delegate a_actionCompleteHandleWithParameter:@""];
    }
}

- (void)private_get_module_A_DataFromServer {
    A_ServiceParameter *a_parameter = [[A_ServiceParameter alloc] initWithXXXId:@"" pageSize:0 pageNumber:0];
    [A_Service getResourceDataServiceWithParameter:a_parameter completeHandle:^(A_ServiceResult * _Nonnull result) {
#warning todo...refresh UI
    } failure:^(NSError * _Nonnull error) {
        
    }];
}

#pragma mark - initUI
- (void)private_initUI {
//    [self private_initMinePageTableView];
    [self private_initLoginButton];
    [self initLeftItemWithTargrt:self action:@selector(private_navLeftItemBackAction:) parentView:self.view];
}

- (void)private_initMinePageTableView {
    
    if (!_sourceCenterMainPageTableView) {
        _sourceCenterMainPageTableView = [[A_TableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-BOTTOM_BAR_HEIGHT) style:UITableViewStylePlain];
        if (@available(iOS 11.0, *)) {//iOS 10 & 11 view.y 10 = 64 11 = 0
        _sourceCenterMainPageTableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
        [self.view addSubview:_sourceCenterMainPageTableView];
    }
}

- (void)private_initLoginButton {
    _loginButton = [UIButton buttonWithTitle:@"登录" titleFont:18 titleColorNormal:[UIColor whiteColor] titleColorHilight:[UIColor lightGrayColor] titleColorDisable:[UIColor lightGrayColor] backgroundImageNoraml:@"" backgroundImageHilight:@"" backgroundImageDisable:@"" backgroundColor:[UIColor redColor] cornerRadius:3 enabled:YES rect:CGRectMake(0, 0, 100, 50) Targrt:self action:@selector(private_loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
    _loginButton.center = self.view.center;
}

- (void)private_loginButtonAction:(UIButton *)sender {
    [CKYSLoginViewController presentToLoginViewControllerFromViewController:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [CKYSLoginViewController pushToLoginViewControllerFromViewController:self];
}

- (void)dealloc {
    [LoginNotificationHelper unregisterLoginSuccessNotificationObserver:self object:nil];
    [[HPNetworkStatusManager manager] unRegisterNetworkChangeListener:self];
    NSLog(@"dealloc%@",self);
}

@end
