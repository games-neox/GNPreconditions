//
//  GNPreconditionsTest.h
//  GNPreconditions
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <GNExceptions/GNIllegalArgumentException.h>

#define DEFAULT_EXCEPTION GNIllegalArgumentException



__attribute__((objc_subclassing_restricted))
@interface GNPreconditionsTest : XCTestCase
{
@private
    Class defaultExceptionClass_;
    id defaultTestObject_;
    NSString* defaultErrorMessage_;
}

@end
