//
//  MacBook.m
//  Builder
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import "MacBook.h"

@implementation MacBook

-(MacBook*)initWithDisplayType:(DisplayType)displayType withScreenSize:(ScreenSize)screenSize withStorageType:(StorageType)storageType withCpuType:(CPUType)cpuType {
    self = [super init];
    if (self) {
        _displayType = displayType;
        _screenSize = screenSize;
        _storageType = storageType;
        _cpuType = cpuType;
    }
    return self;
}

@end
