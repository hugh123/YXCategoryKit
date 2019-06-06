//
//  UIDevice+MLBUtilities.m
//  ERPProject
//
//  Created by meilbn on 26/06/2017.
//  Copyright © 2017 hugh. All rights reserved.
//

#import "UIDevice+MLBUtilities.h"
#import <AdSupport/AdSupport.h>
#import <sys/utsname.h>

@implementation UIDevice (MLBUtilities)

- (NSString *)deviceModel {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSLog(@"mlb - sysname = %@, nodename = %@, release = %@, version = %@, machine = %@", [NSString stringWithCString:systemInfo.sysname encoding:NSUTF8StringEncoding], [NSString stringWithCString:systemInfo.nodename encoding:NSUTF8StringEncoding], [NSString stringWithCString:systemInfo.release encoding:NSUTF8StringEncoding], [NSString stringWithCString:systemInfo.version encoding:NSUTF8StringEncoding], [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding]);
    
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}


- (NSString *)modelName {
    NSString *machine = [self deviceModel];
    
    if ([machine isEqualToString:@"iPod5,1"]) {
        return @"iPod Touch 5";
    } else if ([machine isEqualToString:@"iPod7,1"]) {
        return @"iPod Touch 6";
    } else if ([machine isEqualToString:@"iPhone3,1"] || [machine isEqualToString:@"iPhone3,2"] || [machine isEqualToString:@"iPhone3,3"]) {
        return @"iPhone 4";
    } else if ([machine isEqualToString:@"iPhone4,1"]) {
        return @"iPhone 4s";
    } else if ([machine isEqualToString:@"iPhone5,1"] || [machine isEqualToString:@"iPhone5,2"]) {
        return @"iPhone 5";
    } else if ([machine isEqualToString:@"iPhone5,3"] || [machine isEqualToString:@"iPhone5,4"]) {
        return @"iPhone 5c";
    } else if ([machine isEqualToString:@"iPhone6,1"] || [machine isEqualToString:@"iPhone6,2"]) {
        return @"iPhone 5s";
    } else if ([machine isEqualToString:@"iPhone7,2"]) {
        return @"iPhone 6";
    } else if ([machine isEqualToString:@"iPhone7,1"]) {
        return @"iPhone 6 Plus";
    } else if ([machine isEqualToString:@"iPhone8,1"]) {
        return @"iPhone 6s";
    } else if ([machine isEqualToString:@"iPhone8,2"]) {
        return @"iPhone 6s Plus";
    } else if ([machine isEqualToString:@"iPhone8,4"]) {
        return @"iPhone SE";
    } else if ([machine isEqualToString:@"iPhone9,1"] || [machine isEqualToString:@"iPhone9,3"]) {
        return @"iPhone 7";
    } else if ([machine isEqualToString:@"iPhone9,2"] || [machine isEqualToString:@"iPhone9,4"]) {
        return @"iPhone 7 Plus";
    } else if ([machine isEqualToString:@"iPhone10,1"] || [machine isEqualToString:@"iPhone10,4"]) {
        return @"iPhone 8";
    } else if ([machine isEqualToString:@"iPhone10,2"] || [machine isEqualToString:@"iPhone10,5"]) {
        return @"iPhone 8 Plus";
    } else if ([machine isEqualToString:@"iPhone10,3"] || [machine isEqualToString:@"iPhone10,6"]) {
        return @"iPhone X";
    } else if ([machine isEqualToString:@"iPad2,1"] || [machine isEqualToString:@"iPad2,2"] || [machine isEqualToString:@"iPad2,3"] || [machine isEqualToString:@"iPad2,4"]) {
        return @"iPad 2";
    } else if ([machine isEqualToString:@"iPad3,1"] || [machine isEqualToString:@"iPad3,2"] || [machine isEqualToString:@"iPad3,3"]) {
        return @"iPad 3";
    } else if ([machine isEqualToString:@"iPad3,4"] || [machine isEqualToString:@"iPad3,5"] || [machine isEqualToString:@"iPad3,6"]) {
        return @"iPad 4";
    } else if ([machine isEqualToString:@"iPad4,1"] || [machine isEqualToString:@"iPad4,2"] || [machine isEqualToString:@"iPad4,3"]) {
        return @"iPad Air";
    } else if ([machine isEqualToString:@"iPad5,3"] || [machine isEqualToString:@"iPad5,4"]) {
        return @"iPad Air 2";
    } else if ([machine isEqualToString:@"iPad6,11"] || [machine isEqualToString:@"iPad6,12"]) {
        return @"iPad 5";
    } else if ([machine isEqualToString:@"iPad2,5"] || [machine isEqualToString:@"iPad2,6"] || [machine isEqualToString:@"iPad2,7"]) {
        return @"iPad Mini";
    } else if ([machine isEqualToString:@"iPad4,4"] || [machine isEqualToString:@"iPad4,5"] || [machine isEqualToString:@"iPad4,6"]) {
        return @"iPad Mini 2";
    } else if ([machine isEqualToString:@"iPad4,7"] || [machine isEqualToString:@"iPad4,8"] || [machine isEqualToString:@"iPad4,9"]) {
        return @"iPad Mini 3";
    } else if ([machine isEqualToString:@"iPad5,1"] || [machine isEqualToString:@"iPad5,2"]) {
        return @"iPad Mini 4";
    } else if ([machine isEqualToString:@"iPad6,3"] || [machine isEqualToString:@"iPad6,4"]) {
        return @"iPad Pro 9.7 Inch";
    } else if ([machine isEqualToString:@"iPad6,7"] || [machine isEqualToString:@"iPad6,8"]) {
        return @"iPad Pro 12.9 Inch";
    } else if ([machine isEqualToString:@"iPad7,1"] || [machine isEqualToString:@"iPad7,2"]) {
        return @"iPad Pro 12.9 Inch 2. Generation";
    } else if ([machine isEqualToString:@"iPad7,3"] || [machine isEqualToString:@"iPad7,4"]) {
        return @"iPad Pro 10.5 Inch";
    } else if ([machine isEqualToString:@"AppleTV5,3"]) {
        return @"Apple TV";
    } else if ([machine isEqualToString:@"i386"] || [machine isEqualToString:@"x86_64"]) {
        return [NSString stringWithFormat:@"%@-Simulator", self.localizedModel];
    } else {
        return machine;
    }
}

- (NSString *)currentDeviceInfo {
    NSString *adID = [ASIdentifierManager sharedManager].advertisingIdentifier.UUIDString;
    return [NSString stringWithFormat:@"%@_%@_%@", [[UIDevice currentDevice] modelName], [UIDevice currentDevice].systemVersion, adID];
}

@end
