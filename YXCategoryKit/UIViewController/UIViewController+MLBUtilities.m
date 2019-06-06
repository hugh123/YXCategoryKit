//
//  UIViewController+MLBUtilities.m
//  ERPProject
//
//  Created by meilbn on 01/08/2017.
//  Copyright © 2017 hugh. All rights reserved.
//

#import "UIViewController+MLBUtilities.h"

@implementation UIViewController (MLBUtilities)

- (UIViewController *)topVisibleViewController {
    if ([self isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)self;
        return [tabBarController.selectedViewController topVisibleViewController];
    } else if ([self isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)self;
        return [navigationController.visibleViewController topVisibleViewController];
    } else if (self.presentedViewController) {
        return [self.presentedViewController topVisibleViewController];
    } else if (self.childViewControllers.count > 0) {
        return [self.childViewControllers.lastObject topVisibleViewController];
    }
    
    return self;
}

@end
