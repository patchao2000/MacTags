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
    if (self)
    {
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
    
    [entryView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [inspectorView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
//    [_splitView setHoldingPriority:NSLayoutPriorityDefaultLow+2 forSubviewAtIndex:0];
//    [_splitView setHoldingPriority:NSLayoutPriorityDefaultLow+1 forSubviewAtIndex:1];

    NSView *contentView = [[self window] contentView];
    
    [contentView addSubview:_splitView];
    
    /* Maybe we should consider not double adding constraints */
    NSDictionary *views = NSDictionaryOfVariableBindings(entryView, inspectorView, _splitView);
    [self.splitView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[entryView(>=300)]-(1)-[inspectorView(>=300,<=350)]|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:views]];
    [self.splitView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[entryView(>=300)]|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:views]];
    [self.splitView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[inspectorView]|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:views]];
//    [_splitView adjustSubviews];
    
    NSNumber *border = @([[self window] contentBorderThicknessForEdge:NSMinYEdge]);
    [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_splitView]-border-|"
                                                                        options:0
                                                                        metrics:NSDictionaryOfVariableBindings(border)
                                                                          views:views]];
    [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_splitView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:views]];
    [contentView layoutSubtreeIfNeeded];
    
    
    
    
    
//    [_splitView setAutosaveName:@"SplitView"];
}

@end
