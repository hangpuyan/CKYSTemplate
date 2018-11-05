//
//  UIViewController+NavigationBarHidden.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/22.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIViewController+NavigationBarHidden.h"

@implementation UIViewController (NavigationBarHidden)

- (void)setObjViewControllerNavigationBarHidden:(BOOL)hidden {
    self.navigationController.navigationBar.hidden = hidden;
}

@end
