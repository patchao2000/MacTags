//
//  MTTest.m
//  MacTags
//
//  Created by 赵鹏 on 14-4-1.
//  Copyright (c) 2014年 Zhao Peng. All rights reserved.
//

#import "MTTest.h"

//#import "taglib.h"
#import "fileref.h"

@implementation MTTest

- (void)test
{
    TagLib::FileRef f("Latex Solar Beef.mp3");
    TagLib::String artist = f.tag()->artist(); // artist == "Frank Zappa"
    f.tag()->setAlbum("Fillmore East");
    f.save();
    TagLib::FileRef g("Free City Rhymes.ogg");
    TagLib::String album = g.tag()->album(); // album == "NYC Ghosts & Flowers"
    g.tag()->setTrack(1);
    g.save();
}

@end
