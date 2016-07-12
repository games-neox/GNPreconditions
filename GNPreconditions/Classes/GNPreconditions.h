//
//  GNPreconditions.h
//  GNPreconditions
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <GNExceptions/GNNilPointerException.h>



__attribute__((objc_subclassing_restricted))
@interface GNPreconditions : NSObject

/**
 * @param errorMessage {@code NSString} to be passed to the raised {@code GNNilPointerException} if test condition fails
 *
 * @throws GNNilPointerException if {@code testObject} is {@code nil}
 * @throws NSGenericException if {@code errorMessage} is {@code nil}
 */
+ (void)checkNotNil:(id)testObject :(NSString*)errorMessage;


/**
 * @param errorMessage {@code NSString} to be passed to the raised {@code NSException} if test condition fails
 * @param exceptionClass instance of this type will be thrown if test condition fails. It shall extends the
 *         {@code NSException} class
 *
 * @throws [[exceptionClass alloc] init] if {@code testCondition} is {@code NO}
 * @throws GNNilPointerException if {@code exceptionClass} or {@code errorMessage} is {@code nil}
 */
+ (void)checkCondition:(BOOL)testCondition :(Class)exceptionClass :(NSString*)errorMessage;

@end
