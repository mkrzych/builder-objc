//
//  MacBook.h
//  Builder
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    SSD,
    HDD,
    SSD_HDD
} StorageType;

typedef enum : NSUInteger {
    Standard,
    Retina
} DisplayType;

typedef enum : NSUInteger {
    i5,
    i7,
} CPUType;

typedef enum : NSUInteger {
    s11inch,
    s13inch,
    s15inch,
} ScreenSize;

@interface MacBook : NSObject

@property (nonatomic) ScreenSize screenSize;
@property (nonatomic) DisplayType displayType;
@property (nonatomic) StorageType storageType;
@property (nonatomic) CPUType cpuType;

-(MacBook*)initWithDisplayType:(DisplayType)displayType withScreenSize:(ScreenSize)screenSize withStorageType:(StorageType)storageType withCpuType:(CPUType)cpuType;

@end
