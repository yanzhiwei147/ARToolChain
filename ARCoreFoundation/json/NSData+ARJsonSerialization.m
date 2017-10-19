//
//  NSData+ARJsonSerialization.m
//  ARCoreFoundation
//
//  Created by arida on 13/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import "NSData+ARJsonSerialization.h"

@implementation NSData (ARJsonSerialization)
- (id)ar_jsonValue {
    return [self ar_jsonValueWithError:nil];
}

- (id)ar_jsonValueWithError:(out NSError * __autoreleasing *)error {
    
    return [self ar_jsonValueWithOptions:NSJSONReadingMutableContainers error:error];
}

- (id)ar_jsonValueWithOptions:(NSJSONReadingOptions)options error:(out NSError * __autoreleasing *)error {
    
    if ([self length] == 0) {
        return nil;
    }
    
    NSError *errorT = nil;
    id jsonObj = [NSJSONSerialization JSONObjectWithData:self options:options error:&errorT];
    if (errorT) {
        if (error) {
            *error = errorT;
        }
        return nil;
    }
    
    return jsonObj;
}
@end
