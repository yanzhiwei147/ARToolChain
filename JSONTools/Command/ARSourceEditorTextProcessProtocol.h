//
//  ARSourceEditorTextProcessProtocol.h
//  JSONTools
//
//  Created by arida on 16/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 define the handle block for source editor string.

 @param origin the string for source editor.
 @param error the error should be assign
 @return return handled string. reutrn nil if handle failure.
 */
typedef NSString *(^ARSourceEditorTextProcessHandler)(NSString *origin, NSError * __autoreleasing *error);

@protocol ARSourceEditorTextProcessProtocol <NSObject>
/**
 get all support handles.

 @return return all support handles.
 */
- (NSDictionary<NSString *, ARSourceEditorTextProcessHandler> *)handles;
@end
