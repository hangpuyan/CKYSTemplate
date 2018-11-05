//
//  CKYSBCSearchItem.h
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CKYSBCSearchItem : UIBarButtonItem

- (instancetype)initRightBarItemWithImageNormalString:(NSString *)aImageNormalString imageHighlightedString:(NSString *)aImageHighlightedString target:(id)aTarget action:(SEL)action;

@end
