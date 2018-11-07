//
//  A_TableViewCell+SetLabelContentLayout.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/23.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_TableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface A_TableViewCell (SetLabelContentLayout)

- (void)setLabelContentLayout:(A_Item *)item isTextType:(BOOL)textType;

- (void)setLabelContentLayout:(A_Item *)item isTextType:(BOOL)isTextType isDetailPageType:(BOOL)isDetailPageType;

@end

NS_ASSUME_NONNULL_END
