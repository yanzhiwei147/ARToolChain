//
//  JSONFormatter.h
//  JSONTools
//
//  Created by arida on 16/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARSourceEditorTextProcessProtocol.h"

@interface JSONFormatter : NSObject
/**
 get JSONHandler for prettity

 @return return the handler for prettity json.
 */
+ (ARSourceEditorTextProcessHandler)prettityJSONHandler;
@end
