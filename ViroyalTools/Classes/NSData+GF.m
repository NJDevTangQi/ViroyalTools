//
//  NSData+GF.m
//  Pods
//
//  Created by 熊国锋 on 2017/6/27.
//
//

#import "NSData+GF.h"
#import "NSString+GF.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (GF)

- (NSString *)MD5 {
    unsigned char r[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5([self bytes], (CC_LONG)[self length], r);
    NSString *MD5 = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                     r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10], r[11], r[12], r[13], r[14], r[15]];
    
    return [MD5 uppercaseString];
}

@end
