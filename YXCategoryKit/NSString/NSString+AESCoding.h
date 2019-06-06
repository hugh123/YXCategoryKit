//
//  NSString+AESCoding.h
//  ERPProject
//
//  Created by shibing zhang on 2017/12/4.
//  Copyright © 2017年 hugh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCrypto.h>

@interface NSString (AESCoding)

//先MD5加密，在Aes加密
- (NSString *)encodeMd5AesMd5String:(NSString *)key;

//AES解密
- (NSString *)AES256EncryptWithOperation:(CCOperation)operation WithKey:(NSString *)keyValue;
- (NSData *)AES256EncryptWithOperation:(CCOperation)operation WithContentData:(NSData *)contentData WithKey:(NSString *)keyValue;
@end
