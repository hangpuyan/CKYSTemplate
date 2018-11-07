//
//  A_TableViewCell.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_TableViewCell.h"
#import "A_CellHeaderView.h"
#import "A_CellFooterView.h"
#import "UILabel+Category.h"
#import "A_TableViewCellConst.h"
#import "A_ImageCollectionView.h"
#import "UIView+Category.h"
#import "A_VideoView.h"
#import "A_ImageCollectionViewHelper.h"
#import "A_TableViewCell+SetImageSetViewLayout.h"
#import "Masonry.h"

#import "A_Item.h"

#import "A_TableViewCell+SetLabelContentLayout.h"
#import "A_TableViewCell+SetVideoViewLayout.h"
#import "A_TableViewCell+SetFooterViewLayout.h"
#import "CKYSScreenConst.h"

NSString *A_TableViewCellID = @"A_TableViewCellID";

@interface A_TableViewCell ()

<A_CellHeaderViewDelegate,
A_CellFooterViewDelegate,
A_ImageCollectionViewDelegate,
A_VideoViewDelegate>

@property (nonatomic, strong) A_ImageCollectionView *imageCollectionView;

@property (nonatomic, strong) A_VideoView *videoView;

@property (nonatomic, strong) UILabel *labelContentText;//文字内容

@property (nonatomic, strong) A_CellHeaderView *headerView;

@property (nonatomic, strong) A_CellFooterView *footerView;

@end

@implementation A_TableViewCell {
    __weak id<A_TableViewCellDelegate> _delegate;
    NSIndexPath *_indexPath;
    A_Item *_sourceCenterItem;
}

- (void)setSourceCenterVideoViewActionType:(A_VideoViewActionType)type {

    [_videoView setSourceCenterVideoViewActionType:type];
}

- (void)setSourceCenterTableViewCellDataItem:(A_Item *)item atIndexPath:(nonnull NSIndexPath *)indexPath {
    _sourceCenterItem = item;
    _indexPath = indexPath;
    
    [_headerView setSourceCenterCellHeaderViewData:item atIndexPath:indexPath];
    
    [self setLabelContentLayout:item isTextType:YES isDetailPageType:YES];
    [self setVideoViewLayout:item atIndexPath:indexPath];
    [self setImageSetViewLayout:item];
    [self setFooterViewLayoutWithItem:item];
    [self private_setDetailPageState];
    [_footerView setSourceCenterCellFooterViewData:item];
}

- (void)setSourceCenterTableViewCellDelegate:(id<A_TableViewCellDelegate>)delegate {
    _delegate = delegate;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    A_TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:A_TableViewCellID];
    if (cell == nil) {
        cell = [[A_TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:A_TableViewCellID];
    }
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initUI];
    }
    return self;
}

#pragma mark - A_ImageCollectionViewDelegate

- (void)sourceCenterImageCollectionViewDidSelectedItem:(NSIndexPath *)indexpath imageItemList:(nonnull NSArray<UIImage *> *)imageItemList currentImage:(nonnull UIImage *)currentImage {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterTableViewCellDidSelectedImageSourceCenterItem:atIndexPath:imageItemList:atImageIndex:currentImage:)]) {
        [_delegate sourceCenterTableViewCellDidSelectedImageSourceCenterItem:_sourceCenterItem atIndexPath:_indexPath imageItemList:imageItemList atImageIndex:indexpath.row currentImage:currentImage];
    }
}

- (void)sourceCenterImageCollectionViewDidSelectedItem:(NSIndexPath *)indexpath imageUrlList:(NSArray<NSString *> *)imageUrlList currentImageUrl:(NSString *)currentImageUrl {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterTableViewCellDidSelectedImageSourceCenterItem:atIndexPath:imageUrlList:atImageIndex:currentImageUrl:)]) {
        [_delegate sourceCenterTableViewCellDidSelectedImageSourceCenterItem:_sourceCenterItem atIndexPath:_indexPath imageUrlList:imageUrlList atImageIndex:indexpath.row currentImageUrl:currentImageUrl];
    }
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterTableViewCellDidSelectedImageCollectionItemActionSourceCenterItem:atIndexPath:imageUrlList:atImageIndex:parentView:)]) {
        [_delegate sourceCenterTableViewCellDidSelectedImageCollectionItemActionSourceCenterItem:_sourceCenterItem atIndexPath:_indexPath imageUrlList:imageUrlList atImageIndex:indexpath.row parentView:(UICollectionView *)_imageCollectionView];
    }        
}

- (void)private_responseDelegateWithActionType:(A_TableViewCellActionType)actionType sourceCenterItem:(id)sourceCenterItem atIndexPath:(NSIndexPath *)indexpath {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterTableViewCellAction:sourceCenterItem:atIndexPath:)]) {
        [_delegate sourceCenterTableViewCellAction:actionType sourceCenterItem:sourceCenterItem atIndexPath:indexpath];
    }
}

#pragma mark - A_CellHeaderViewDelegate
- (void)sourceCenterCellHeaderViewHeadActionAtIndexPath:(NSIndexPath *)indexpath {
}

#pragma mark - A_VideoViewDelegate
- (void)sourceCenterVideoViewActionType:(A_VideoViewActionType)actionType atIndexPath:(NSIndexPath *)indexPath videoItem:(id)videoItem {
    
}

#pragma mark - A_CellFooterViewDelegate
- (void)sourceCenterCellFooterViewAction:(A_CellFooterViewActionType)actionType {
    
}

- (void)initUI {
    UIView *viewTopSegement = [UIView instanceWithRect:CGRectMake(0, 0, SCREEN_WIDTH, A_TableViewCellCellSegementOffsetConst) backgroundColor:[UIColor colorWithRed:241/255.0 green:241/255.0 blue:241/255.0 alpha:1] parentView:self.contentView];
    [viewTopSegement mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.contentView);
        make.height.equalTo(@(A_TableViewCellCellSegementOffsetConst));
    }];
    _headerView = [[A_CellHeaderView alloc] initWithFrame:CGRectMake(0, A_TableViewCellCellSegementOffsetConst, SCREEN_WIDTH, A_CellHeaderViewHeightConst) delegate:self];
    [self.contentView addSubview:_headerView];
    [_headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(viewTopSegement);
        make.height.equalTo(@(A_CellHeaderViewHeightConst));
    }];
    
    
    _labelContentText = [UILabel labelWithTitle:@"" titleFont:15 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:0 textColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1]];
    [self.contentView addSubview:_labelContentText];
    [_labelContentText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_headerView.mas_bottom);
        make.left.equalTo(self.contentView.mas_left).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.right.equalTo(self.contentView.mas_right).with.offset(-A_TableViewCellHeadTopOffsetConst);
    }];
    
    _videoView = [[A_VideoView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, A_VideoViewHeightConst) sourceCenterVideoViewDelegate:self];
    [self.contentView addSubview:_videoView];
    [_videoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_labelContentText.mas_bottom).with.offset(A_TableViewCellBottomLineTopOffsetConst);
        make.left.equalTo(self.contentView.mas_left).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.right.equalTo(self.contentView.mas_right).with.offset(-A_TableViewCellHeadTopOffsetConst);
 make.height.equalTo(@(A_VideoViewHeightConst));
    }];
    
    _imageCollectionView = [[A_ImageCollectionView alloc] initWithSourceCenterImageCollectionViewDelegate:self parentView:self.contentView];
    [_imageCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_videoView.mas_bottom).with.offset(A_TableViewCellBottomLineTopOffsetConst);
    make.left.equalTo(self.contentView.mas_left).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.right.equalTo(self.contentView.mas_right).with.offset(-A_TableViewCellHeadTopOffsetConst); make.height.equalTo(@(100));

    }];
    
    _footerView = [[A_CellFooterView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, A_CellFooterViewHeightConst) delegate:self];
    [self.contentView addSubview:_footerView];
    
    [_footerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_imageCollectionView.mas_bottom).with.offset(A_TableViewCellBottomLineTopOffsetConst);
        make.left.right.equalTo(self.contentView);                make.height.equalTo(@(A_CellFooterViewHeightConst));
        make.bottom.equalTo(self.contentView);
    }];
}

- (void)private_setDetailPageState {
    [self.footerView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imageCollectionView.mas_bottom).with.offset(A_TableViewCellBottomLineTopOffsetConst);
        make.left.right.equalTo(self.contentView);
    make.height.equalTo(@(A_CellFooterViewHeightConst));
        make.bottom.equalTo(self.contentView);
    }];
    [self layoutIfNeeded];
}

@end
