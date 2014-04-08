//
//  MTAppDelegate.m
//  MacTags
//
//  Created by 赵鹏 on 14-4-1.
//  Copyright (c) 2014年 Zhao Peng. All rights reserved.
//

#import "MTAppDelegate.h"
#import "MTMainWindowController.h"

@implementation MTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self createMainWindow:self];
}

- (IBAction)createMainWindow:(id)sender
{
    if (mainWindowController == nil)
        mainWindowController = [[MTMainWindowController alloc] initWithWindowNibName:@"MainWindow"];
    [mainWindowController showWindow:self];
}

@end
