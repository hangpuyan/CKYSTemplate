//
//  UIViewController+PushViewController.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/24.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIViewController+PushViewController.h"

@implementation UIViewController (PushViewController)

+ (void)pushToObjViewController:(UIViewController *)objViewController animated:(BOOL)animated fromViewController:(UIViewController *)fromViewController {
    
    [fromViewController.navigationController pushViewController:objViewController animated:YES];
}

@end
