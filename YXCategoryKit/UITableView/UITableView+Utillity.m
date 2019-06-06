//
//  UITableView+Utillity.m
//  ERPProject
//
//  Created by shibing zhang on 2018/6/1.
//  Copyright © 2018年 hugh. All rights reserved.
//

#import "UITableView+Utillity.h"
#import <objc/runtime.h>

static const void *headerKey = &headerKey;

@implementation UITableView (Utillity)

@dynamic headerViewList;

- (NSMutableDictionary *)headerViewList {
    NSMutableDictionary *dic = objc_getAssociatedObject(self, headerKey);
    if (dic == nil) {
        dic = [[NSMutableDictionary alloc] init];
        objc_setAssociatedObject(self, headerKey, dic, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

- (nullable __kindof UITableViewHeaderFooterView *)erp_dequeueReusableHeaderFooterViewWithIdentifier:(NSString *_Nullable)identifier ForSection:(NSInteger)section NS_AVAILABLE_IOS(6_0)NS_AVAILABLE_IOS(6_0){
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0) {
        return [self dequeueReusableHeaderFooterViewWithIdentifier:identifier];
    }else {
        NSString *key = [NSString stringWithFormat:@"%@-%li",identifier,(long)section];
        
        NSMutableDictionary *dic = self.headerViewList;
        
        UITableViewHeaderFooterView *cacheHeaderView = [dic objectForKey:key];
        if (cacheHeaderView) {
            return cacheHeaderView;
        }
        cacheHeaderView = [self dequeueReusableHeaderFooterViewWithIdentifier:identifier];
        [dic setObject:cacheHeaderView forKey:key];
        objc_setAssociatedObject(self, headerKey, dic, OBJC_ASSOCIATION_COPY_NONATOMIC);
        return cacheHeaderView;
    }
}

@end
