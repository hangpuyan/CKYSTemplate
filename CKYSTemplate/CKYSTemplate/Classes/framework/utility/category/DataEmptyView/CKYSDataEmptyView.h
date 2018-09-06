//
//  CKYSDataEmptyView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/12.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CKYS_BUINSEE_HOME_EMPTY_TOP_OFFSET 261
#define CKYS_BUINSEE_COURSE_LIST_EMPTY_TOP_OFFSET 149
#define CKYS_BUINSEE_COURSE_LIST_EMPTY_COLOR [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1]

@interface CKYSDataEmptyView : UIView

/** 课程列表为空 */
- (instancetype)initWithFrame:(CGRect)frame topOffset:(CGFloat)topOffset;

/** 商学院首页数据为空 */
- (instancetype)initWithFrame:(CGRect)frame topOffset:(CGFloat)topOffset businessCollegeView:(UIView *)parentView;

@end
