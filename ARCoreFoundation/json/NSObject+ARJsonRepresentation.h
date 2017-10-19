//
//  NSObject+ARJsonRepresentation.h
//  ARCoreFoundation
//
//  Created by arida on 13/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ARJsonRepresentation)
/**
 valid the object can be convert to JSONString. Object must be conform below condition:
 - must be a NSArray or NSDictionary
 - all key type must be a NSString instance
 - all value type must be a NSString,NSNumber,NSArray,NSDictionary,NSNull
 - NSNunber value can't be NaN or inf

 @return return YES if object can be convert to JSONString, otherwise return NO
 */
- (BOOL)ar_isValidJSONObject;

/**
 convert object to JSONString

 @return return the JSONString equal this object, return nil if object invalid.
 */
- (NSString *)ar_jsonRepresentation;

/**
 convert object to JSONString, and optional get error info while error occurs

 @param error the error should be assign
 @return return the JSONString equal this object, return nil if object invalid.
 */
- (NSString *)ar_jsonRepresentationWithError:(out NSError * __autoreleasing *)error;

/**
 convert object to JSONString, optional provider options, and get error info while error occurs

 @param options convert options
 @param error the error should be assign
 @return return the JSONString equal this object, return nil if object invalid.
 */
- (NSString *)ar_jsonRepresentationWithOptions:(NSJSONWritingOptions)options error:(out NSError * __autoreleasing *)error;
@end
