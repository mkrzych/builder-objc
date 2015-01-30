//
//  MacBookBuilder.m
//  Builder
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import "MacBookBuilder.h"

@implementation MacBookBuilder {
    StorageType storageType;
    DisplayType displayType;
    CPUType cpuType;
    ScreenSize screenSize;
}

-(void) setStandardDisplay {
    displayType = Standard;
}

-(void) setRetinaDisplay {
    displayType = Retina;
}

-(void) set11Inches {
    screenSize = s11inch;
}

-(void) set13Inches {
    screenSize = s13inch;
}

-(void) set15Inches {
    screenSize = s15inch;
}

-(void) setSSD {
    storageType = SSD;
}

-(void) setHDD {
    storageType = HDD;
}

-(void) setSSDandHDD {
    storageType = SSD_HDD;
}

-(void) seti5 {
    cpuType = i5;
}

-(void) seti7 {
    cpuType = i7;
}

-(MacBook*) getResult {
    MacBook* mb = [[MacBook alloc] initWithDisplayType: displayType withScreenSize: screenSize withStorageType: storageType withCpuType: cpuType];
    return mb;
}

@end
