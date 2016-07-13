//
//  GNPreconditions.m
//  GNPreconditions
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import "GNPreconditions.h"

#import <GNLog/GNLog.h>



#ifdef DEBUG
static const NSString* const LOG_TAG = @"Preconditions";
#endif // DEBUG


@implementation GNPreconditions

+ (void)checkNotNil:(id)testObject :(NSString*)errorMessage
{
#ifdef DEBUG
    if (nil == errorMessage) {
        @throw [NSException exceptionWithName:NSGenericException reason:@"errorMessage is nil!" userInfo:nil];
    }

    if (nil == testObject) {
        LOG_WRITE_ERROR(LOG_TAG, errorMessage);
        @throw [[GNNilPointerException alloc] initWithName:kGNNilPointerException reason:errorMessage userInfo:nil];
    }
#endif // DEBUG
}


+ (void)checkCondition:(BOOL)testCondition :(Class)exceptionClass :(NSString*)errorMessage;
{
#ifdef DEBUG
    if (nil == exceptionClass) {
        LOG_WRITE_ERROR(LOG_TAG, @"nil == exceptionClass!");
        @throw [[GNNilPointerException alloc] initWithName:kGNNilPointerException reason:@"nil == exceptionClass!"
                userInfo:nil];
    }
    if (nil == errorMessage) {
        LOG_WRITE_ERROR(LOG_TAG, @"nil == errorMessage!");
        @throw [[GNNilPointerException alloc] initWithName:kGNNilPointerException reason:@"nil == errorMessage!"
                userInfo:nil];
    }

    if (NO == [exceptionClass isSubclassOfClass:[NSException class]]) {
        @throw [NSException exceptionWithName:NSGenericException
                reason:[NSString stringWithFormat:@"%@ is not subclass of NSException class!", exceptionClass]
                userInfo:nil];
    }

    if (NO == testCondition) {
        LOG_WRITE_ERROR(LOG_TAG, errorMessage);
        @throw [[exceptionClass alloc] initWithName:[exceptionClass defaultName] reason:errorMessage userInfo:nil];
    }
#endif // DEBUG
}

@end
