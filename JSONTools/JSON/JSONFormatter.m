//
//  JSONFormatter.m
//  JSONTools
//
//  Created by arida on 16/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import "JSONFormatter.h"

#import <ARCoreFoundation/ARCoreFoundation.h>

@implementation JSONFormatter
+ (ARSourceEditorTextProcessHandler)prettityJSONHandler {
    return ^NSString *(NSString *origin, NSError * __autoreleasing *outError) {
        NSError *error = nil;
        id jsonValue = [origin ar_jsonValueWithError:&error];
        if (!jsonValue) {
            if (outError) {
                *outError = error;
            }
            return nil;
        }
        
        NSString *formatedString = [jsonValue ar_jsonRepresentationWithOptions:NSJSONWritingPrettyPrinted error:&error];
        if (!formatedString) {
            if (outError) {
                *outError = error;
            }
            return nil;
        }
        return formatedString;
    };
}
@end
