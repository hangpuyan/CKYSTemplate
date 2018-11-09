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
#import "UIViewController+NoticeView.h"

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

@interface A_ViewController ()

@end

@implementation A_ViewController {
    __weak id<A_ViewControllerDelegate> _delegate;
    id _parameter;
    NSMutableArray <A_Item *>*dataArrayMinePage;
    A_TableView *_sourceCenterMainPageTableView;
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
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self setObjViewControllerNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self setObjViewControllerNavigationBarHidden:NO];
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
    [A_Service getResourceDataServiceWithParameter:a_parameter completeHandle:^(A_ServiceResult * _Nonnull sourceCenterResult) {
#warning todo...refresh UI
    } failure:^(NSError * _Nonnull error) {
        
    }];
}

#pragma mark - initUI
- (void)private_initUI {
    [self private_initMinePageTableView];
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

- (void)dealloc {
    NSLog(@"dealloc%@",self);
}

@end
