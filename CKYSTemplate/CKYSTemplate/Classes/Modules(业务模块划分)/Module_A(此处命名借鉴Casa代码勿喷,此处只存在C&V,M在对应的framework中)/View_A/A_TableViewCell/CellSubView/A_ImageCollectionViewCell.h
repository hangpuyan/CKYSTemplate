//
//  A_ImageCollectionViewCell.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *A_ImageCollectionViewCellID;

typedef void(^A_ImageCollectionViewCellDownLoadImageAsyncBlock)(UIImage *image, NSString *imageUrl);

#define CKYS_SOURCE_CENTER_IMAGE_PLACEHOLDER  @"ckys_poster_browse_cell_image_placeholder"

@interface A_ImageCollectionViewCell : UICollectionViewCell

- (void)setSourceCenterImageItemUrl:(NSString *)imageUrl;

@property (atomic, strong, readonly) UIImage *image;

@property (atomic, copy) A_ImageCollectionViewCellDownLoadImageAsyncBlock imageAsyncBlock;

@end

NS_ASSUME_NONNULL_END
