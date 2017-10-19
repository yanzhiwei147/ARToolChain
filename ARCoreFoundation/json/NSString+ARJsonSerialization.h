//
//  NSString+ARJsonSerialization.h
//  ARCoreFoundation
//
//  Created by arida on 13/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ARJsonSerialization)
/**
 get JSONObject from NSString
 
 @return return JSONObject via NSString
 */
- (id)ar_jsonValue;

/**
 *    @see -ar_jsonValueWithOptions:error:
 */
/**
 get JSONObject from NSString
 
 @param error the error should be assign
 @return return JSONObject via NSString
 */
- (id)ar_jsonValueWithError:(out NSError * __autoreleasing *)error;

/**
 get JSONObject from NSString, it must be conform below condition:
 - String encoding must to UTF-8, UTF-16LE, UTF-16BE, UTF-32LE, UTF-32BE
 - Has/no BOM
 
 @param options convert options
 @param error the error should be assign
 @return return JSONObject via NSString
 */
- (id)ar_jsonValueWithOptions:(NSJSONReadingOptions)options error:(out NSError * __autoreleasing *)error;
@end
