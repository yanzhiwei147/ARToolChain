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
@end
