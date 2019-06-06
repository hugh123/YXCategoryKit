//
//  NSDecimalNumber+FZOperation.m
//  FZShopPosManagerSystem
//
//  Created by hugh on 16/5/6.
//  Copyright © 2016年 hugh. All rights reserved.
//

#import "NSDecimalNumber+FZOperation.h"

@implementation NSDecimalNumber (FZOperation)

+ (nullable NSDecimalNumber *)initWithString:(nullable NSString *)numberValue
{
    if ((NSNull *)numberValue == [NSNull null] || numberValue == nil || numberValue.length == 0) {
        return [NSDecimalNumber decimalNumberWithString:@"0"];
    }else{
        return [NSDecimalNumber decimalNumberWithString:numberValue];
    }
}

+ (nullable NSDecimalNumber *)initWithInteger:(NSInteger)numberValue
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)numberValue];
    return [NSDecimalNumber decimalNumberWithString:numberString];
}

+ (nullable NSDecimalNumber *)initWithFloat:(CGFloat)numberValue
{
    NSString *numberString = [NSString stringWithFormat:@"%f",numberValue];
    return [NSDecimalNumber decimalNumberWithString:numberString];
}

+ (nullable NSDecimalNumber *)initWithDouble:(double)numberValue
{
    NSString *numberString = [NSString stringWithFormat:@"%f",numberValue];
    return [NSDecimalNumber decimalNumberWithString:numberString];
}


//加法
- (nullable NSDecimalNumber *)adding:(nullable NSDecimalNumber *)number
{
    if (number) {
        if (![number isEqualToNumber:[NSDecimalNumber notANumber]]) {
            return [self decimalNumberByAdding:number];
        }else{
            return self;
        }
        
    }else{
        return self;
    }
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithInteger:(NSInteger)number
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithFloat:(CGFloat)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithDouble:(double)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithString:(nullable NSString *)number
{
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:number]];
}

- (nullable NSDecimalNumber *)decimalNumberByAddingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior;
{
    return  [self decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:number] withBehavior:behavior];
}

//减法
- (nullable NSDecimalNumber *)subtracting:(nullable NSDecimalNumber *)number
{
    if (number) {
        return [self decimalNumberBySubtracting:number];
    }else{
        return self;
    }
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithInteger:(NSInteger)number
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithFloat:(CGFloat)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithDouble:(double)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithString:(nullable NSString *)number
{
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:number]];
}

- (nullable NSDecimalNumber *)decimalNumberBySubtractingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    return  [self decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:number] withBehavior:behavior];
}

//乘法
- (nullable NSDecimalNumber *)multiplying:(nullable NSDecimalNumber *)number
{
    if (number) {
        return [self decimalNumberByMultiplyingBy:number];
    }else{
        return self;
    }
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithInteger:(NSInteger)number
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithFloat:(CGFloat)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithDouble:(double)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithString:(nullable NSString *)number
{
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:number]];
}

- (nullable NSDecimalNumber *)decimalNumberByMultiplyingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    return  [self decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:number] withBehavior:behavior];
}

//除法
- (nullable NSDecimalNumber *)dividing:(nullable NSDecimalNumber *)number
{
    if (number && ![number mlb_isEqualToZero]) {
        return [self decimalNumberByDividingBy:number];
    }else{
        return self;
    }
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithInteger:(NSInteger)number
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithInteger:(NSInteger)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%li",(long)number];
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithFloat:(CGFloat)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:numberString]];
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithFloat:(CGFloat)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithDouble:(double)number
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:numberString]];
}
- (nullable NSDecimalNumber *)decimalNumberByDividingWithDouble:(double)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    NSString *numberString = [NSString stringWithFormat:@"%f",number];
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:numberString] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithString:(nullable NSString *)number
{
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:number]];
}

- (nullable NSDecimalNumber *)decimalNumberByDividingWithString:(nullable NSString *)number withBehavior:(nullable id <NSDecimalNumberBehaviors>)behavior
{
    return  [self decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:number] withBehavior:behavior];
}

- (nullable NSDecimalNumber *)decimalNumberPoint:(NSInteger)point RoundingMode:(NSRoundingMode)mode {
    NSDecimalNumberHandler *handler = [NSDecimalNumberHandler
                                      decimalNumberHandlerWithRoundingMode:NSRoundBankers
                                      scale:point
                                      raiseOnExactness:NO
                                      raiseOnOverflow:NO
                                      raiseOnUnderflow:NO
                                      raiseOnDivideByZero:YES];
    
    return [self decimalNumberByRoundingAccordingToBehavior:handler];
}

@end
