//
//  A_TableView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_TableView.h"
#import "A_TableViewCell.h"
#import "A_VideoView.h"
#import "A_Item.h"
#import "ScreenConst.h"
#import "A_PlaceHolderView.h"
#import "A_TableViewCell.h"
#import "A_ImageCollectionViewHelper.h"
#import "A_ServicePageSizeConst.h"

@interface A_TableView ()

<UITableViewDataSource,
UITableViewDelegate,
A_TableViewCellDelegate>

@property (atomic, assign) int currentPageNo;

@end

@implementation A_TableView {
    NSMutableArray <A_Item *>*_sourceCenterDataItemList;
    A_PlaceHolderView *_emptyView;
}

- (void)setSourceCenterDataItem:(NSArray <A_Item *>*)sourceCenterDataItemList {
    _sourceCenterDataItemList = sourceCenterDataItemList.mutableCopy;
    [self private_setEmptyViewHidden:_sourceCenterDataItemList.count];
    [self reloadData];
}

- (void)setEmptyViewHidden {

    [self private_setEmptyViewHidden:YES];
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style pullActionDisEnabled:(BOOL)disEnabled {
    return [self initWithFrame:frame style:style];
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI {
    self.delegate = self;
    self.dataSource = self;
    self.rowHeight = UITableViewAutomaticDimension;
    self.estimatedRowHeight = 300.f;
    self.backgroundColor = [UIColor colorWithRed:241/255.0 green:241/255.0 blue:241/255.0 alpha:1];
    self.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.showsHorizontalScrollIndicator = false;
    self.showsVerticalScrollIndicator = false;
    [self setAllowsSelection:YES];
    [self registerClass:[A_TableViewCell class] forCellReuseIdentifier:A_TableViewCellID];
  
    [self private_initEmptyView];
    self.currentPageNo = A_SERVICE_PAGE_SIZESERVICE_PAGE_NUMBER;
}

- (void)private_initEmptyView {

    [self private_setEmptyViewHidden:NO];
}

- (void)private_setEmptyViewHidden:(BOOL)hidden {

}

#pragma mark - delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sourceCenterDataItemList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    A_TableViewCell *cellResult = [A_TableViewCell cellWithTableView:tableView];
    return cellResult;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView cellForRowAtIndexPath:indexPath].selected = false;
}

#pragma mark - A_TableViewCellDelegate
- (void)sourceCenterTableViewCellAction:(A_TableViewCellActionType)actionType sourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexPath {    
    
}

- (void)sourceCenterTableViewCellDidSelectedImageSourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath imageItemList:(NSArray <UIImage *>*)imageItemList atImageIndex:(NSInteger)imageIndex currentImage:(UIImage *)currentImage {
    
}

- (void)sourceCenterTableViewCellDidSelectedImageSourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath imageUrlList:(NSArray<NSString *> *)imageUrlList atImageIndex:(NSInteger)imageIndex currentImageUrl:(NSString *)currentImageUrl {
    
}

- (void)sourceCenterTableViewCellDidSelectedImageCollectionItemActionSourceCenterItem:(A_Item *)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath imageUrlList:(NSArray<NSString *> *)imageUrlList atImageIndex:(NSInteger)imageIndex parentView:(UIView *)parentView {
   
}

@end
