//
//  MTMainWindowController.m
//  MacTags
//
//  Created by 赵鹏 on 14-4-8.
//  Copyright (c) 2014年 Zhao Peng. All rights reserved.
//

#import "MTMainWindowController.h"
#import "MTEntryViewController.h"
#import "MTInspectorViewController.h"

@interface MTMainWindowController ()

@property (strong) IBOutlet NSSplitView *splitView;

@property (strong) MTEntryViewController *entryViewController;
@property (strong) MTInspectorViewController *inspectorViewController;

@end

@implementation MTMainWindowController
//@synthesize splitView;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
        _entryViewController = [[MTEntryViewController alloc] init];
        _inspectorViewController = [[MTInspectorViewController alloc] init];
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    [self.splitView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSView *inspectorView = [_inspectorViewController view];
    NSView *entryView = [_entryViewController view];
    [_splitView addSubview:entryView];
    [_splitView addSubview:inspectorView];
    
//    [_splitView setHoldingPriority:NSLayoutPriorityDefaultLow+2 forSubviewAtIndex:0];
//    [_splitView setHoldingPriority:NSLayoutPriorityDefaultLow+1 forSubviewAtIndex:2];
    
//    [_splitView setAutosaveName:@"SplitView"];
}

@end
