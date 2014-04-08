//
//  MTMainWindowController.h
//  MacTags
//
//  Created by 赵鹏 on 14-4-8.
//  Copyright (c) 2014年 Zhao Peng. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MTEntryViewController;
@class MTInspectorViewController;

@interface MTMainWindowController : NSWindowController

@property (readonly, strong) MTEntryViewController *entryViewController;
@property (readonly, strong) MTInspectorViewController *inspectorViewController;

//@property (assign) IBOutlet NSSplitView *splitView;

//@property (assign) MTEntryViewController *entryViewController;
//@property (assign) MTInspectorViewController *inspectorViewController;

@end
