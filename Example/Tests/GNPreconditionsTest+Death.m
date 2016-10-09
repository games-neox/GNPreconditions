//
//  GNPreconditionsTest+Death.m
//  GNPreconditions
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import "GNPreconditionsTest.h"

#import <GNPreconditions/GNPreconditions.h>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnonnull"



@implementation GNPreconditionsTest (Death)

/**
 * invalid ({@code nil}) errorMessage provided
 */
- (void)testDeathCheckNotNil
{
    XCTAssertThrowsSpecificNamed([GNPreconditions checkNotNil:defaultTestObject_ :nil], NSException, NSGenericException);
}


/**
 * invalid ({@code nil}) exceptionClass provided
 */
- (void)testDeathCheckCondition0
{
    XCTAssertThrowsSpecificNamed([GNPreconditions checkCondition:YES :nil :defaultErrorMessage_], GNNilPointerException,
            kGNNilPointerException);
}


/**
 * invalid exceptionClass provided
 */
- (void)testDeathCheckCondition1
{
    XCTAssertThrowsSpecificNamed([GNPreconditions checkCondition:YES :[NSObject class] :defaultErrorMessage_],
            NSException, NSGenericException);
}


/**
 * invalid ({@code nil}) errorMessage provided
 */
- (void)testDeathCheckCondition2
{
    XCTAssertThrowsSpecificNamed([GNPreconditions checkCondition:YES :defaultExceptionClass_ :nil],
            GNNilPointerException, kGNNilPointerException);
}

@end

#pragma clang diagnostic pop
