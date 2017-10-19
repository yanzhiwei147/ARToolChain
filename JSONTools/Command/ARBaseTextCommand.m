//
//  ARBaseTextCommand.m
//  JSONTools
//
//  Created by arida on 16/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import "ARBaseTextCommand.h"

@implementation ARBaseTextCommand
- (NSDictionary<NSString *, ARSourceEditorTextProcessHandler> *)handles {
    return nil;
}

- (void)performCommandWithInvocation:(XCSourceEditorCommandInvocation *)invocation completionHandler:(void (^)(NSError * _Nullable))completionHandler {
    NSDictionary<NSString *, ARSourceEditorTextProcessHandler> *handlers = [self handles];
    if (!handlers || handlers.count < 1) {
        completionHandler(nil);
        return;
    }
    
    XCSourceTextBuffer *buffer = invocation.buffer;
    
    NSError *error = nil;
    ARSourceEditorTextProcessHandler handle = handlers[invocation.commandIdentifier];
    if (!handle) {
        completionHandler(nil);
        return;
    }
    
    // get all editor content
    NSString *editorContent = buffer.completeBuffer;
    NSString *handledString = handle(editorContent, &error);
    
    if (error) {
        completionHandler(error);
        return;
    }
    
    buffer.completeBuffer = handledString;
    
    completionHandler(nil);
    
}
@end
