//
//  A_ImageCollectionView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol A_ImageCollectionViewDelegate <NSObject>

- (void)sourceCenterImageCollectionViewDidSelectedItem:(NSIndexPath *)indexpath imageItemList:(NSArray <UIImage *>*)imageItemList currentImage:(UIImage *)currentImage;

- (void)sourceCenterImageCollectionViewDidSelectedItem:(NSIndexPath *)indexpath imageUrlList:(NSArray <NSString *>*)imageUrlList currentImageUrl:(NSString *)currentImageUrl;

@end

@protocol A_ImageCollectionViewDataProtocol <NSObject>

- (void)setSourceCenterImageUrlList:(NSArray <NSString *>*)imageUrlList;

@end

typedef void(^A_ImageCollectionViewSingleImageCompleteHandle)(UIImage *singleImgae);

@interface A_ImageCollectionView : UIView <A_ImageCollectionViewDataProtocol>

@property (nonatomic, copy) A_ImageCollectionViewSingleImageCompleteHandle singleImageCompleteHandle;

- (instancetype)initWithSourceCenterImageCollectionViewDelegate:(id<A_ImageCollectionViewDelegate>)delegate parentView:(UIView *)parentView;

@end

NS_ASSUME_NONNULL_END
