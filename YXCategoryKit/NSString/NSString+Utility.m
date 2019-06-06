//
//  NSString+Utility.m
//  Weipaimai
//
//  Created by peng jiang on 10/14/14.
//  Copyright (c) 2014 peng jiang. All rights reserved.
//

#import "NSString+Utility.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Utility)

- (nullable NSString *)md5String {
    const char *cStr = [self UTF8String];
    unsigned char digest[16];
    CC_MD5(cStr, (unsigned int)strlen(cStr), digest); // This is the md5 call
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return  [NSString stringWithFormat:@"%@", output];
}

- (nullable NSString *)stringOutOfSpecial {
    if (self) {
        return [self stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
    }
    return self;
}


- (nullable NSString *)toUtf8String {
    return [self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

- (nullable NSString *)decodeUtf8String {
    NSString *utfString = [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    if (utfString) {
        return utfString;
    }
    return self;
}

@end
