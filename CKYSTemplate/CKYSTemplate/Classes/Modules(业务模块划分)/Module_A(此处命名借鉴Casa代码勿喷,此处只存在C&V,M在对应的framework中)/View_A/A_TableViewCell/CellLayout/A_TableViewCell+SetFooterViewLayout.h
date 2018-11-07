//
//  A_TableViewCell+SetFooterViewLayout.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/23.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_TableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

/* set 赞 赏 分享 UI布局 */
@interface A_TableViewCell (SetFooterViewLayout)

- (void)setFooterViewLayoutWithItem:(A_Item *)item;

@end

NS_ASSUME_NONNULL_END
