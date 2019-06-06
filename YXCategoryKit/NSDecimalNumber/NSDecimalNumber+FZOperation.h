//
//  NSDecimalNumber+FZOperation.h
//  FZShopPosManagerSystem
//
//  Created by hugh on 16/5/6.
//  Copyright © 2016年 hugh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGBase.h>
#import "NSDecimalNumber+MLBUtilities.h"

@interface NSDecimalNumber (FZOperation)

//创建对象
+ (nullable NSDecimalNumber *)initWithString:(nullable NSString *)numberValue;

+ (nullable NSDecimalNumber *)initWithInteger:(NSInteger)numberValue;

+ (nullable NSDecimalNumber *)initWithFloat:(CGFloat)numberValue;

+ (nullable NSDecimalNumber *)initWithDouble:(double)numberValue;

//加法
- (nullable NSDecimalNumber *)adding:(nullable NSDecimalNumber *)number;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithInteger:(NSInteger)number;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithFloat:(CGFloat)number;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithDouble:(double)number;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithString:(nullable NSString *)number;

- (nullable NSDecimalNumber *)decimalNumberByAddingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

//减法
- (nullable NSDecimalNumber *)subtracting:(nullable NSDecimalNumber *)number;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithInteger:(NSInteger)number;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithFloat:(CGFloat)number;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithDouble:(double)number;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithString:(nullable NSString *)number;

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

//乘法
- (nullable NSDecimalNumber *)multiplying:(nullable NSDecimalNumber *)number;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithInteger:(NSInteger)number;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithFloat:(CGFloat)number;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithDouble:(double)number;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithString:(nullable NSString *)number;

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

//除法
- (nullable NSDecimalNumber *)dividing:(nullable NSDecimalNumber *)number;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithInteger:(NSInteger)number;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithFloat:(CGFloat)number;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithDouble:(double)number;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithString:(nullable NSString *)number;

- (nullable NSDecimalNumber *)decimalNumberByDividingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;


- (nullable NSDecimalNumber *)decimalNumberPoint:(NSInteger)point RoundingMode:(NSRoundingMode)mode;

@end
