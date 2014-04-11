//
//  MTEntryViewController.m
//  MacTags
//
//  Created by 赵鹏 on 14-4-8.
//  Copyright (c) 2014年 Zhao Peng. All rights reserved.
//

#import "MTEntryViewController.h"

@interface MTEntryViewController ()

@property (weak) IBOutlet NSTableView *entryTable;

@end

@implementation MTEntryViewController

- (id)init
{
    return [[MTEntryViewController alloc] initWithNibName:@"EntryView" bundle:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Initialization code here.
    }
    return self;
}

@end
