//
//  UIView+Utility.h
//  Weipaimai
//
//  Created by peng jiang on 10/1/14.
//  Copyright (c) 2014 peng jiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Utility)

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGSize size;

// data refresh
@property (assign, nonatomic) BOOL dataRefreshed;

@property (nonatomic, strong) NSString *mlb_key;

- (void)removeAllSubviews;

@end
