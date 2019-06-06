//
//  NSArray+MLBUtilities.m
//  ERPProject
//
//  Created by meilbn on 8/23/16.
//  Copyright © 2016 hugh. All rights reserved.
//

#import "NSArray+MLBUtilities.h"

@implementation NSArray (MLBUtilities)

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
