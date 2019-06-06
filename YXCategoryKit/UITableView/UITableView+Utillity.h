//
//  UITableView+Utillity.h
//  ERPProject
//
//  Created by shibing zhang on 2018/6/1.
//  Copyright © 2018年 hugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Utillity)

@property (nonatomic, strong) NSMutableDictionary * _Nonnull headerViewList;

- (nullable __kindof UITableViewHeaderFooterView *)erp_dequeueReusableHeaderFooterViewWithIdentifier:(NSString *_Nullable)identifier ForSection:(NSInteger)section NS_AVAILABLE_IOS(6_0);  // like dequeueReusableCellWithIdentifier:, but for headers/footers

@end
