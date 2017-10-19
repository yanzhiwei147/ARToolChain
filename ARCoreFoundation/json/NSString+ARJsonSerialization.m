//
//  NSString+ARJsonSerialization.m
//  ARCoreFoundation
//
//  Created by arida on 13/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import "NSString+ARJsonSerialization.h"
#import "NSData+ARJsonSerialization.h"

@implementation NSString (ARJsonSerialization)
- (id)ar_jsonValue {
    return [self ar_jsonValueWithError:nil];
}

- (id)ar_jsonValueWithError:(out NSError * __autoreleasing *)error {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] ar_jsonValueWithError:error];
}
- (id)ar_jsonValueWithOptions:(NSJSONReadingOptions)options error:(out NSError * __autoreleasing *)error {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] ar_jsonValueWithOptions:options error:error];
}
@end
