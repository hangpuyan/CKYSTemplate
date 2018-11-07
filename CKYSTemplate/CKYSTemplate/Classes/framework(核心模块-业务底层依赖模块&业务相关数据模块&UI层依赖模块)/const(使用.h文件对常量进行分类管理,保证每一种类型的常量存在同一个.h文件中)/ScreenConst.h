//
//  ScreenConst.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/7.
//  Copyright © 2018 YY. All rights reserved.
//

#ifndef ScreenConst_h
#define ScreenConst_h

#define SCREEN_WIDTH    ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT   ([UIScreen mainScreen].bounds.size.height)
#define SCREEN_HEIGHT_IPHONE_4 ([UIScreen mainScreen].bounds.size.height == 480)
#define SCREEN_HEIGHT_IPHONE_5 ([UIScreen mainScreen].bounds.size.height ==568)
#define SCREEN_HEIGHT_IPHONE_6 ([UIScreen mainScreen].bounds.size.height ==667)
#define SCREEN_HEIGHT_IPHONE_6P ([UIScreen mainScreen].bounds.size.height ==736)

#define SCREEN_STATUS_AND_NAVIGATION_HEIGHT        ([UIScreen mainScreen].bounds.size.height>=812 ? 88 : 64)

#define SCREEN_STATUS_BAR_HEIGHT        ([UIScreen mainScreen].bounds.size.height>=812 ? 22 : 22)
#define SCREEN_NAVIGATION_BAR_HEIGHT        ([UIScreen mainScreen].bounds.size.height>=812 ? 66 : 42)

#define SCREEN_TAB_BAR_HEIGHT       ([UIScreen mainScreen].bounds.size.height>=812 ? 83 : 49)

#define BOTTOM_BAR_HEIGHT       ([UIScreen mainScreen].bounds.size.height>=812 ? 34 : 0)

#define  IPHONE_X ([UIScreen mainScreen].bounds.size.height>=812 ? YES : NO)

#endif /* ScreenConst_h */
