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
#import "A_TableView.h"
#import "A_TableViewCell.h"
#import "A_VideoView.h"
#import "A_TableViewCellConst.h"
#import "A_Service.h"
#import "A_ServiceResult.h"
#import "A_ServiceParameter.h"
#import "A_Item.h"
#import "A_ServicePageSizeConst.h"
#import "UIViewController+NavigationBarStatusBar.h"
#import "UIViewController+NoticeView.h"
#import "Masonry.h"
#import "ScreenConst.h"

@interface A_ViewController ()

@end

@implementation A_ViewController {
    NSMutableArray <A_Item *>*dataArrayMinePage;
    A_TableView *_sourceCenterMainPageTableView;
}

+ (void)jumpTo_A_PageFromViewController:(UIViewController *)viewController xxxId:(NSString *)xxxId {
    [viewController.navigationController pushViewController:[[A_ViewController alloc] initWithXXXId:xxxId] animated:YES];
}

- (instancetype)initWithXXXId:(NSString *)xxxId {
    
    return [self init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self private_initUI];
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
}

- (void)private_sourceCenterAddButtonAction:(UIButton *)sender {
    
}

- (void)private_getRewardMaxMoneyValueFromServer {
    
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
