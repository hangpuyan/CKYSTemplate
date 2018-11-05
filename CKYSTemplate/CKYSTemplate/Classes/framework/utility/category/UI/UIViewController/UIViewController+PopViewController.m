//
//  UIViewController+PopViewController.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/22.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIViewController+PopViewController.h"

@implementation UIViewController (PopViewController)

+ (void)objViewController:(UIViewController *)objViewController popViewControllerAnimated:(BOOL)animated {
    [objViewController.navigationController popViewControllerAnimated:animated];
}

@end
