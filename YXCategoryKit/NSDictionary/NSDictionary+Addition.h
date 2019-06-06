//
//  NSDictionary+Addition.h
//  ERPToolKit
//
//  Created by shibing zhang on 2018/6/25.
//  Copyright © 2018年 hugh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Addition)

+ (NSDictionary *)dictionaryWithContentsOfData:(NSData *)data;

- (NSString *)jsonString;


@end
