//
//  BuilderTests.m
//  BuilderTests
//
//  Created by Marcin Krzych on 29/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MacBookBuilder.h"

@interface BuilderTests : XCTestCase

@end

@implementation BuilderTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBuildMacBookAir {
    MacBookBuilder* mbb = [[MacBookBuilder alloc] init];
    [mbb set11Inches];
    [mbb setStandardDisplay];
    [mbb setSSD];
    [mbb seti5];
    MacBook* mb = [mbb getResult];
    
    XCTAssertEqual(mb.cpuType, i5, @"CPU Incorrect");
    XCTAssertEqual(mb.storageType, SSD, @"Storage Incorrect");
    XCTAssertEqual(mb.displayType, Standard, @"Display Incorrect");
    XCTAssertEqual(mb.screenSize, s11inch, @"Screen Size Incorrect");
}

- (void)testBuildMacBookProRetina {
    MacBookBuilder* mbb = [[MacBookBuilder alloc] init];
    [mbb set15Inches];
    [mbb setRetinaDisplay];
    [mbb setSSD];
    [mbb seti7];
    MacBook* mb = [mbb getResult];
    
    XCTAssertEqual(mb.cpuType, i7, @"CPU Incorrect");
    XCTAssertEqual(mb.storageType, SSD, @"Storage Incorrect");
    XCTAssertEqual(mb.displayType, Retina, @"Display Incorrect");
    XCTAssertEqual(mb.screenSize, s15inch, @"Screen Size Incorrect");
}

- (void)testBuildMacBookPro {
    MacBookBuilder* mbb = [[MacBookBuilder alloc] init];
    [mbb set13Inches];
    [mbb setStandardDisplay];
    [mbb setHDD];
    [mbb seti5];
    MacBook* mb = [mbb getResult];
    
    XCTAssertEqual(mb.cpuType, i5, @"CPU Incorrect");
    XCTAssertEqual(mb.storageType, HDD, @"Storage Incorrect");
    XCTAssertEqual(mb.displayType, Standard, @"Display Incorrect");
    XCTAssertEqual(mb.screenSize, s13inch, @"Screen Size Incorrect");
}

@end
