//
//  UIAlertController+SupportedInterfaceOrientations.m
//  ERPProject
//
//  Created by meilbn on 21/03/2018.
//  Copyright © 2018 hugh. All rights reserved.
//

#import "UIAlertController+SupportedInterfaceOrientations.h"

@implementation UIAlertController (SupportedInterfaceOrientations)

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 9000
- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
#endif

@end
