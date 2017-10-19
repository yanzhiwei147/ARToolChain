//
//  ARBaseTextCommand.h
//  JSONTools
//
//  Created by arida on 16/10/2017.
//  Copyright © 2017 arida. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XcodeKit/XcodeKit.h>
#import "ARSourceEditorTextProcessProtocol.h"

@interface ARBaseTextCommand : NSObject<ARSourceEditorTextProcessProtocol, XCSourceEditorCommand>

@end
