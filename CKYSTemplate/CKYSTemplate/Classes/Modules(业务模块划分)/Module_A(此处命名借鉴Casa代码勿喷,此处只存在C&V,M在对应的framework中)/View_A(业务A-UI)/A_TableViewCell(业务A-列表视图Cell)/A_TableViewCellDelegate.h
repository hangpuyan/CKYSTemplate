//
//  A_TableViewCellDelegate.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/24.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class A_ImageCollectionView, A_VideoView, A_CellHeaderView, A_CellFooterView;

@class A_Item;

typedef NS_ENUM(NSUInteger, A_TableViewCellActionType) {
    A_TableViewCellActionType_ = 0,
    
};

@protocol A_TableViewCellDelegate <NSObject>

- (void)sourceCenterTableViewCellAction:(A_TableViewCellActionType)actionType sourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexPath;

- (void)sourceCenterTableViewCellDidSelectedImageSourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath imageItemList:(NSArray <UIImage *>*)imageItemList atImageIndex:(NSInteger)imageIndex currentImage:(UIImage *)currentImage;

- (void)sourceCenterTableViewCellDidSelectedImageSourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath imageUrlList:(NSArray <NSString *>*)imageUrlList atImageIndex:(NSInteger)imageIndex currentImageUrl:(NSString *)currentImageUrl;

- (void)sourceCenterTableViewCellDidSelectedImageCollectionItemActionSourceCenterItem:(A_Item *)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath imageUrlList:(NSArray <NSString *>*)imageUrlList atImageIndex:(NSInteger)imageIndex parentView:(UIView *)parentView;

@optional
- (void)sourceCenterTableViewCellDownloadSingleImageCompleteHandleAtIndexPath:(NSIndexPath *)indexpath;

@end

@protocol A_TableViewCellDataProtocol <NSObject>

- (void)setSourceCenterTableViewCellDelegate:(id<A_TableViewCellDelegate>)delegate;

- (void)setSourceCenterTableViewCellDataItem:(A_Item *)item atIndexPath:(NSIndexPath *)indexPath;

@end

typedef void(^A_CellSingleImageCompleteHandle)(BOOL singleImgaeDownloadComplete, NSIndexPath *indexpath);

NS_ASSUME_NONNULL_END
