//
//  A_TableViewCell+SetFooterViewLayout.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/23.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_TableViewCell+SetFooterViewLayout.h"
#import "A_CellHeaderView.h"
#import "A_CellFooterView.h"
#import "UILabel+Category.h"
#import "A_TableViewCellConst.h"
#import "A_ImageCollectionView.h"
#import "UIView+Category.h"
#import "A_VideoView.h"
#import "A_ImageCollectionViewHelper.h"
#import "A_Item.h"
#import "Masonry.h"

@implementation A_TableViewCell (SetFooterViewLayout)

- (void)setFooterViewLayoutWithItem:(A_Item *)item {
    [self.footerView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imageCollectionView.mas_bottom).with.offset(A_TableViewCellBottomLineTopOffsetConst);
        make.left.right.equalTo(self.contentView);
        make.height.equalTo(@(A_CellFooterViewHeightConst));
        make.bottom.equalTo(self.contentView);
    }];
    [self layoutIfNeeded];
}

@end

