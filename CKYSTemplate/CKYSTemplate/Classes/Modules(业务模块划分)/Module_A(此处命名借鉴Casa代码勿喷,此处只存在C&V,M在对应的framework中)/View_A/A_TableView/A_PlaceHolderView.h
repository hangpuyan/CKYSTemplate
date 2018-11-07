//
//  A_PlaceHolderView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/19.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "CKYSPlaceHolderView.h"
#import "A_PlaceHolderViewInterface.h"

NS_ASSUME_NONNULL_BEGIN

extern CGFloat A_PlaceHolderTopOffsetConst;

@interface A_PlaceHolderView : CKYSPlaceHolderView

<A_PlaceHolderViewInstanceProtocol,
A_PlaceHolderViewEssenceProtocol,
A_PlaceHolderViewSearchProtocol>

@end

NS_ASSUME_NONNULL_END
