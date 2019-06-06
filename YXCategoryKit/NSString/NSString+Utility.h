//
//  NSString+Utility.h
//  Weipainullablemai
//
//  Created by peng jiang on 10/14/14.
//  Copyright (c) 2014 peng jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Utility)


// string to md5
- (nullable NSString *)md5String;

// ''' to ' '
- (nullable NSString *)stringOutOfSpecial;

//encode with utf8
- (nullable NSString *)toUtf8String;

//decode with utf8
- (nullable NSString *)decodeUtf8String;


@end
