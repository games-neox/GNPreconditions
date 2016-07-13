//
//  GNPreconditionsTest.m
//  GNPreconditions
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import "GNPreconditionsTest.h"



@implementation GNPreconditionsTest

- (void)setUp
{
    defaultExceptionClass_ = [DEFAULT_EXCEPTION class];
    defaultTestObject_ = [[NSObject alloc] init];
    defaultErrorMessage_ = @"default_error_message";
}


- (void)tearDown
{
    defaultExceptionClass_ = nil;
    defaultTestObject_ = nil;
    defaultErrorMessage_ = nil;
}

@end
