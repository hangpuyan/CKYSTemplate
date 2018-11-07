//
//  A_ImageCollectionView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_ImageCollectionView.h"
#import "A_ImageCollectionViewCell.h"
#import "A_TableViewCellConst.h"
#import "A_ImageCollectionViewHelper.h"
#import "Masonry.h"
#import "ScreenConst.h"

@interface A_ImageCollectionView ()

<UICollectionViewDelegate,
UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout>

@property (atomic, strong) NSMutableArray <NSString *>*dataArray;
@property (atomic, strong) NSMutableArray <id>*imageItemList;

@end

@implementation A_ImageCollectionView {
    __weak id<A_ImageCollectionViewDelegate> _delegate;
    __weak UIView * _parentView;
    UICollectionView *_imageItemView;
    UIImageView *_singleImageItemView;
}

- (void)setSourceCenterImageUrlList:(NSArray <NSString *>*)imageUrlList {
    _dataArray = imageUrlList.mutableCopy;
    _imageItemList = _dataArray.mutableCopy;
    [_imageItemView reloadData];
}

- (instancetype)initWithSourceCenterImageCollectionViewDelegate:(id<A_ImageCollectionViewDelegate>)delegate parentView:(UIView *)parentView {
    _parentView = parentView;
    _delegate = delegate;
    return [self initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [_parentView addSubview:self];
        [self private_initUI];
    }
    return self;
}

- (void)private_initUI {
    _dataArray = [NSMutableArray array];
    _imageItemList = [NSMutableArray array];
    [self private_initCollectionView];
}

- (void)private_initCollectionView {
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.minimumLineSpacing = 0;
    _imageItemView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    [_imageItemView registerClass:[A_ImageCollectionViewCell class] forCellWithReuseIdentifier:A_ImageCollectionViewCellID];
    _imageItemView.delegate = self;
    _imageItemView.dataSource = self;
    _imageItemView.showsHorizontalScrollIndicator = NO;
    _imageItemView.showsVerticalScrollIndicator = NO;
    _imageItemView.backgroundColor = [UIColor whiteColor];
    [self addSubview:_imageItemView];
    [_imageItemView setAllowsSelection:YES];
    [_imageItemView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.left.right.mas_equalTo(self);
        make.height.equalTo(self);
        make.width.equalTo(@(SCREEN_WIDTH));
    }];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    A_ImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:A_ImageCollectionViewCellID forIndexPath:indexPath];
    @try {
        [cell setSourceCenterImageItemUrl:@""];
        //防止复用导致显示重复
        if (_dataArray.count && _dataArray.count>indexPath.row) {
            [cell setSourceCenterImageItemUrl:_dataArray[indexPath.row]];
        }
        
        __weak typeof(self) weakSelf = self;
        if (_imageItemList.count==1) {
            cell.imageAsyncBlock = ^(UIImage * _Nonnull image, NSString * _Nonnull imageUrl) {
                if (weakSelf.singleImageCompleteHandle) {
                    weakSelf.singleImageCompleteHandle(image);
                }
            };
        } else {
            
        }
    } @catch (NSException *e) {
        NSLog(@"%@ failed: %@",self, e);
    } @finally {

    }
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return  1;
}

#pragma mark - UICollectionViewDelegateFlowLayout

/**设置每个item的尺寸*/
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return [A_ImageCollectionViewHelper getCurrentCollectionViewItemSizeWithImageCount:self.dataArray.count];
}

/* 设置每个item的UIEdgeInsets */
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

/* SpacingForSection */
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return [A_ImageCollectionViewHelper getCurrentCollectionViewItemSectionSpaceWithImageCount:self.dataArray.count];
}

/* LineSpacing */
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    return [A_ImageCollectionViewHelper getCurrentCollectionViewItemLineSpaceWithImageCount:self.dataArray.count];
}

#pragma mark- UICollectionViewDelegate 点击跳转到对应页面

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterImageCollectionViewDidSelectedItem:imageItemList:currentImage:)]) {
        UIImage *image = [[UIImage alloc] init];
        if (_imageItemList.count>indexPath.row) {
            image = _imageItemList[indexPath.row];
        }
        [_delegate sourceCenterImageCollectionViewDidSelectedItem:indexPath imageItemList:_imageItemList currentImage:image];
    }
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterImageCollectionViewDidSelectedItem:imageUrlList:currentImageUrl:)]) {
        NSString *image = @"";
        if (_imageItemList.count>indexPath.row) {
            image = _imageItemList[indexPath.row];
        }
        [_delegate sourceCenterImageCollectionViewDidSelectedItem:indexPath imageUrlList:_imageItemList currentImageUrl:image];
    }
}

@end
