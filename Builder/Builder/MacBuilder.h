//
//  Builder.h
//  Builder
//
//  Created by Marcin Krzych on 29/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import "MacBook.h"

#ifndef MacBuilder_Builder_h
#define MacBuilder_Builder_h

@protocol MacBuilder <NSObject>

-(void) setStandardDisplay;
-(void) setRetinaDisplay;

-(void) set11Inches;
-(void) set13Inches;
-(void) set15Inches;

-(void) setSSD;
-(void) setHDD;
-(void) setSSDandHDD;

-(void) seti5;
-(void) seti7;

-(MacBook*) getResult;

@end


#endif
