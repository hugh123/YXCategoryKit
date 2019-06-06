//
//  NSMutableDictionary+Addition.m
//  Huayou
//
//  Created by iCatbot on 4/11/14.
//  Copyright (c) 2014 杭州艺友网络科技有限公司. All rights reserved.
//

#import "NSMutableDictionary+Addition.h"

@implementation NSMutableDictionary (Addition)

- (void)addObject:(id)object forKey:(id)key
{
    if (!object || !key)
        return;
    
    [self setObject:object forKey:key];
}


@end
