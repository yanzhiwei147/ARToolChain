//
//  NSObject+ARJsonRepresentation.m
//  ARCoreFoundation
//
//  Created by arida on 13/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import "NSObject+ARJsonRepresentation.h"

@implementation NSObject (ARJsonRepresentation)
- (BOOL)ar_isValidJSONObject {
    return [NSJSONSerialization isValidJSONObject:self];
}

- (NSString *)ar_jsonRepresentation {
    return [self ar_jsonRepresentationWithError:nil];
}

- (NSString *)ar_jsonRepresentationWithError:(out NSError * __autoreleasing *)error {
    return [self ar_jsonRepresentationWithOptions:NSJSONWritingPrettyPrinted error:error];
}

- (NSString *)ar_jsonRepresentationWithOptions:(NSJSONWritingOptions)options error:(out NSError * __autoreleasing *)error {
    if ([self ar_isValidJSONObject]) {
        NSError *errorT = nil;
        NSData *data = [NSJSONSerialization dataWithJSONObject:self options:options error:&errorT];
        if (errorT) {
            if (error) {
                *error = errorT;
            }
            return nil;
        }
        NSString *strJson = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        if (!strJson) {
            return nil;
        }
        
        // NSJSONSerialization converts a URL string from http://... to http:\/\/... , remove the extra escapes
        strJson = [strJson stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];
        
        return strJson;
    }
    return nil;
}
@end
