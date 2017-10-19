//
//  SourceEditorCommand.m
//  JSONTools
//
//  Created by arida on 16/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import "SourceEditorCommand.h"
#import "JSONFormatter.h"

@implementation SourceEditorCommand

- (NSDictionary<NSString *, ARSourceEditorTextProcessHandler> *)handles {
    ARSourceEditorTextProcessHandler jsonHandler = [JSONFormatter prettityJSONHandler];
    return @{
             @"format.json.prettity": jsonHandler
    };
}

//- (void)performCommandWithInvocation:(XCSourceEditorCommandInvocation *)invocation completionHandler:(void (^)(NSError * _Nullable nilOrError))completionHandler {
//
//    XCSourceTextBuffer *buffer = invocation.buffer;
//
//    // get all editor content
//    NSString *editorContent = buffer.completeBuffer;
//
//    NSError *error = nil;
//    id jsonValue = [editorContent ar_jsonValueWithError:&error];
//    if (!jsonValue) {
//        completionHandler(error);
//        return;
//    }
//
//    NSString *formatedString = [jsonValue ar_jsonRepresentationWithOptions:NSJSONWritingPrettyPrinted error:&error];
//    if (!formatedString) {
//        completionHandler(error);
//        return;
//    }
//
//    buffer.completeBuffer = formatedString;
//
//    completionHandler(nil);
//}

@end
