//
//  NSDictionary+Addition.m
//  ERPToolKit
//
//  Created by shibing zhang on 2018/6/25.
//  Copyright © 2018年 hugh. All rights reserved.
//

#import "NSDictionary+Addition.h"

@implementation NSDictionary (Addition)

+ (NSDictionary *)dictionaryWithContentsOfData:(NSData *)data {
    CFPropertyListRef list = CFPropertyListCreateFromXMLData(kCFAllocatorDefault, (__bridge CFDataRef)data, kCFPropertyListImmutable, NULL);
    if(list == nil) return nil;
    if ([(__bridge id)list isKindOfClass:[NSDictionary class]]) {
        return (__bridge NSDictionary *)list;
    } else {
        CFRelease(list);
        return nil;
    }
}

- (NSString *)jsonString {
    NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    return jsonString;
}


@end
