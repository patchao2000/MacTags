//
//  MTAppDelegate.h
//  MacTags
//
//  Created by 赵鹏 on 14-4-1.
//  Copyright (c) 2014年 Zhao Peng. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MTMainWindowController;

@interface MTAppDelegate : NSObject <NSApplicationDelegate>
{
    MTMainWindowController *mainWindowController;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)createMainWindow:(id)sender;

@end
