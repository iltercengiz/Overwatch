# Overwatch

[![CI Status](https://img.shields.io/travis/Ilter%20Cengiz/Overwatch.svg?style=flat)](https://travis-ci.org/Ilter%20Cengiz/Overwatch)
[![Version](https://img.shields.io/cocoapods/v/Overwatch.svg?style=flat)](http://cocoapods.org/pods/Overwatch)
[![License](https://img.shields.io/cocoapods/l/Overwatch.svg?style=flat)](http://cocoapods.org/pods/Overwatch)
[![Platform](https://img.shields.io/cocoapods/p/Overwatch.svg?style=flat)](http://cocoapods.org/pods/Overwatch)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

Overwatch is a singleton object on its own and provides two class methods to start and stop a timer.

To start a timer:

```swift
Overwatch.start(withName: "com.example.Overwatch.asyncTask")
```

and to stop a timer after a long running task:

```swift
Overwatch.stop(withName: "com.example.Overwatch.asyncTask")
```

Also stop method returns a `TimeInterval` value to let the caller know about the duration that has passed.

## Installation

Overwatch is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'Overwatch', :configurations => ['Debug']
```

It's advised to add Overwatch to only `Debug` configuration.

## Author

Ilter Cengiz, iltercengiz@icloud.com

## License

Overwatch is available under the MIT license. See the LICENSE file for more info.
