//
//  GNPreconditionsTest+Main.m
//  GNPreconditions
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import "GNPreconditionsTest.h"

#import <GNPreconditions/GNPreconditions.h>



@implementation GNPreconditionsTest (Main)

/**
 * correct flow
 */
- (void)testCheckNotNil
{
    XCTAssertThrowsSpecificNamed([GNPreconditions checkNotNil:nil :defaultErrorMessage_], GNNilPointerException, kGNNilPointerException);
}


/**
 * correct flow
 */
- (void)testCheckCondition
{
    XCTAssertThrowsSpecificNamed([GNPreconditions checkCondition:NO :defaultExceptionClass_ :defaultErrorMessage_],
            DEFAULT_EXCEPTION, [DEFAULT_EXCEPTION defaultName]);
}

@end
