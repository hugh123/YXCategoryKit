//
//  UIView+Utility.m
//  Weipaimai
//
//  Created by peng jiang on 10/1/14.
//  Copyright (c) 2014 peng jiang. All rights reserved.
//

#import "UIView+Utility.h"
#import <objc/runtime.h>

static NSString *kUIViewUtilityDataRefreshedKey = @"UIViewUtilityDataRefreshedKey";

static char kAssociatedViewKeyKey;

@implementation UIView (Utility)

- (void)removeAllSubviews {
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
}

#pragma mark - AssociatedObject

- (void)setMlb_key:(NSString *)key {
    objc_setAssociatedObject(self, &kAssociatedViewKeyKey, key, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)mlb_key {
    return objc_getAssociatedObject(self, &kAssociatedViewKeyKey);
}

#pragma mark - Frame

- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

#pragma mark - Data refresh

- (void)setDataRefreshed:(BOOL)dataRefreshed
{
    objc_setAssociatedObject(self, &kUIViewUtilityDataRefreshedKey, [NSNumber numberWithBool:dataRefreshed], OBJC_ASSOCIATION_COPY);
}

- (BOOL)dataRefreshed
{
    NSNumber *boolNumber = objc_getAssociatedObject(self, &kUIViewUtilityDataRefreshedKey);
    if (boolNumber && [boolNumber isKindOfClass:[NSNumber class]]) {
        return boolNumber.boolValue;
    }else {
        return NO;
    }
}

@end
