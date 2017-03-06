//
//  NSString+AES256.h
//  TestDemo
//
//  Created by zhanshu on 16/10/8.
//  Copyright © 2016年 zhanshu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

#import "NSData+AES256.h"

#define kAES_Key @"zmsjzskj12341234"

@interface NSString (AES256)

-(NSString *) aes256_encrypt;
-(NSString *) aes256_decrypt;
@end
