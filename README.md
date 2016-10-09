# GNPreconditions

[![CI Status](http://img.shields.io/travis/games-neox/GNPreconditions.svg?style=flat)](https://travis-ci.org/games-neox/GNPreconditions)
[![Version](https://img.shields.io/cocoapods/v/GNPreconditions.svg?style=flat)](http://cocoapods.org/pods/GNPreconditions)
[![License](https://img.shields.io/cocoapods/l/GNPreconditions.svg?style=flat)](http://cocoapods.org/pods/GNPreconditions)
[![Platform](https://img.shields.io/cocoapods/p/GNPreconditions.svg?style=flat)](http://cocoapods.org/pods/GNPreconditions)

Defenensive-code tool for Objective-C/Swift (enabled for `DEBUG` builds only)

```objective-c
@interface GNPreconditions : NSObject
+ (void)checkNotNil:(nullable id)testObject :(nonnull NSString*)errorMessage;
+ (void)checkCondition:(BOOL)testCondition :(nonnull Class)exceptionClass :(nonnull NSString*)errorMessage;
@end
```  

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Minimum supported `iOS` version: `8.x`  
Dependencies: `GNExceptions` & `GNLog`

## Installation

GNPreconditions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GNPreconditions"
```

## Author

Games Neox, games.neox@gmail.com

## License

GNPreconditions is available under the MIT license. See the LICENSE file for more info.
