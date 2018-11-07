//
//  A_TableViewCell+SetVideoViewLayout.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/23.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_TableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

/* set 视频UI布局 */
@interface A_TableViewCell (SetVideoViewLayout)

- (void)setVideoViewLayout:(A_Item *)item atIndexPath:(NSIndexPath *)indexPath;

@end


NS_ASSUME_NONNULL_END
