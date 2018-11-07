//
//  A_TableViewCell.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "A_VideoViewControlProtocol.h"
#import "A_TableViewCellDelegate.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *A_TableViewCellID;

@interface A_TableViewCell : UITableViewCell <A_TableViewCellDataProtocol,
A_VideoViewControlProtocol>

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong, readonly) A_CellHeaderView *headerView;

@property (nonatomic, strong, readonly) UILabel *labelContentText;//文字内容

@property (nonatomic, strong, readonly) A_ImageCollectionView *imageCollectionView;

@property (nonatomic, strong, readonly) A_VideoView *videoView;

@property (nonatomic, strong, readonly) A_CellFooterView *footerView;

@property (nonatomic, strong, readonly) UIImageView *singleImageView;

@end

NS_ASSUME_NONNULL_END
