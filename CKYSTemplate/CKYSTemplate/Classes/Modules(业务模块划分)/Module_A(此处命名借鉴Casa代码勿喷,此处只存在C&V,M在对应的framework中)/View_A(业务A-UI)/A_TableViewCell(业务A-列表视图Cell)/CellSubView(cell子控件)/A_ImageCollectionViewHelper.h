//
//  A_ImageCollectionViewHelper.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/18.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface A_ImageCollectionViewHelper : NSObject

+ (CGSize)getCurrentCollectionViewSizeWithImageCount:(NSInteger)imageCount;

+ (CGSize)getCurrentCollectionViewItemSizeWithImageCount:(NSInteger)imageCount;

+ (CGFloat)getCurrentCollectionViewItemLineSpaceWithImageCount:(NSInteger)imageCount;

+ (CGFloat)getCurrentCollectionViewItemSectionSpaceWithImageCount:(NSInteger)imageCount;

@end

NS_ASSUME_NONNULL_END
