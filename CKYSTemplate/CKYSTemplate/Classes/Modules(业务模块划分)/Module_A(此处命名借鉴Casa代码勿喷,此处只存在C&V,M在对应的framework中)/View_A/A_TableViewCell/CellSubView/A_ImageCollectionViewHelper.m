//
//  A_ImageCollectionViewHelper.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/18.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_ImageCollectionViewHelper.h"
#import "A_TableViewCellConst.h"
#import "CKYSScreenConst.h"
#import "Masonry.h"

@implementation A_ImageCollectionViewHelper

+ (CGSize)getCurrentCollectionViewSizeWithImageCount:(NSInteger)imageCount {
    return CGSizeMake(0, 0);
}

+ (CGSize)getCurrentCollectionViewItemSizeWithImageCount:(NSInteger)imageCount {
    return CGSizeMake(0, 0);
}

+ (CGFloat)getCurrentCollectionViewItemLineSpaceWithImageCount:(NSInteger)imageCount {
    return 0;
}

+ (CGFloat)getCurrentCollectionViewItemSectionSpaceWithImageCount:(NSInteger)imageCount {
    return 0;
}

@end
