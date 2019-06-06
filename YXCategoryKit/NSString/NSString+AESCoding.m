//
//  NSString+AESCoding.m
//  ERPProject
//
//  Created by shibing zhang on 2017/12/4.
//  Copyright © 2017年 hugh. All rights reserved.
//

#import "NSString+AESCoding.h"

@implementation NSString (AESCoding)

#pragma mark - private

//先MD5加密，在Aes加密
- (NSString *)encodeMd5AesMd5String:(NSString *)key {
    NSData *md5Data = [self stringToMD5Data];
    NSData *aesData = [self AES256EncryptWithOperation:kCCEncrypt WithContentData:md5Data WithKey:key];
    NSString *finalMd5String = [self md5StringFromData:aesData];
    return finalMd5String;
}

#pragma mark - AES


- (NSString *)AES256EncryptWithOperation:(CCOperation)operation WithKey:(NSString *)keyValue {
    NSData *contentData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *key = [keyValue dataUsingEncoding:NSUTF8StringEncoding];
    //对于块加密算法，输出大小总是等于或小于输入大小加上一个块的大小
    //所以在下边需要再加上一个块的大小
    NSUInteger dataLength = [contentData length];
    
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    
    Byte vinitVec[16] = {0};
    size_t numBytesEncrypted = 0;
    //    CCCryptorRef cryptor;
    CCCryptorStatus cryptStatus = CCCrypt(operation,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding/*这里就是刚才说到的PKCS7Padding填充了*/,
                                          [key bytes],
                                          kCCKeySizeAES128,
                                          vinitVec,/* 初始化向量(可选) */
                                          [contentData bytes], dataLength,/*输入*/
                                          buffer, bufferSize,/* 输出 */
                                          &numBytesEncrypted);
    
    if (cryptStatus == kCCSuccess) {
        for (int i = 0; i < bufferSize; i++) {
            NSLog(@"%d",(char)((char *)buffer)[i]&0xff);
        }
        NSData *resultData = [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
        free(buffer);//释放buffer
        return [[NSString alloc] initWithData:resultData encoding:NSUTF8StringEncoding];
    }
    free(buffer);//释放buffer
    return nil;
}

- (NSData *)AES256EncryptWithOperation:(CCOperation)operation WithContentData:(NSData *)contentData WithKey:(NSString *)keyValue {
    NSData *key = [keyValue dataUsingEncoding:NSUTF8StringEncoding];
    //对于块加密算法，输出大小总是等于或小于输入大小加上一个块的大小
    //所以在下边需要再加上一个块的大小
    NSUInteger dataLength = [contentData length];
    
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    
    Byte vinitVec[16] = {0};
    size_t numBytesEncrypted = 0;
    //    CCCryptorRef cryptor;
    CCCryptorStatus cryptStatus = CCCrypt(operation,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding/*这里就是刚才说到的PKCS7Padding填充了*/,
                                          [key bytes],
                                          kCCKeySizeAES128,
                                          vinitVec,/* 初始化向量(可选) */
                                          [contentData bytes], dataLength,/*输入*/
                                          buffer, bufferSize,/* 输出 */
                                          &numBytesEncrypted);
    
    if (cryptStatus == kCCSuccess) {
        for (int i = 0; i < bufferSize; i++) {
            NSLog(@"%d",(char)((char *)buffer)[i]&0xff);
        }
        NSData *resultData = [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
        return resultData;
    }
    free(buffer);//释放buffer
    return nil;
}

#pragma mark - MD5

//字符串转MD5字符串
- (NSString *)stringToMD5String {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    NSString *md5String = [NSString stringWithFormat:
                           @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                           result[0],  result[1],  result[2],  result[3],
                           result[4],  result[5],  result[6],  result[7],
                           result[8],  result[9],  result[10], result[11],
                           result[12], result[13], result[14], result[15]
                           ];
    
    NSLog(@"md5 = %@",[md5String uppercaseString]);
    
    return [md5String uppercaseString];
}

//字符串转MD5-Data
- (NSData *)stringToMD5Data {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    
    return [[NSData alloc] initWithBytes:result length:CC_MD5_DIGEST_LENGTH];
}

//Data转MD5字符串
- (NSString *)md5StringFromData:(NSData *)data {
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    NSString *md5String = [NSString stringWithFormat:
                           @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                           result[0],  result[1],  result[2],  result[3],
                           result[4],  result[5],  result[6],  result[7],
                           result[8],  result[9],  result[10], result[11],
                           result[12], result[13], result[14], result[15]
                           ];
    
    NSLog(@"md5 = %@",[md5String uppercaseString]);
    
    return [md5String uppercaseString];
}

@end
