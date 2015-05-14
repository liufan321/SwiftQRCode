# SwiftQRCode
Simple QRCode detector and generator in Swift

## Features

* QRCode detector
* QRCode generate

## Requirements

* iOS 8.0+ 
* Xcode 6.3

## Installation

### CocoaPods

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate SwiftQRCode into your Xcode project using CocoaPods, specify it in your `Podfile`:

```
platform :ios, '8.0'
use_frameworks!

pod 'SwiftQRCode'
```

Then, run the following command:

```bash
$ pod install
```

You should open the `{Project}.xcworkspace` instead of the `{Project}.xcodeproj` after you installed anything from CocoaPods.

For more information about how to use CocoaPods, I suggest [this tutorial](http://www.raywenderlich.com/64546/introduction-to-cocoapods-2).

## Usage

### Swift

```swift
import SwiftQRCode

let scanner = QRCode()

// scan qrcode
scanner.scanCode(view) { (stringValue) in
    println(stringValue)
}

// generate qrcode
iconView.image = scanner.generateImage("Hello SwiftQRCode", avatarImage: nil)
```

### Objective C

```objc
#import <SwiftQRCode/SwiftQRCode-Swift.h>
#import <CoreImage/CoreImage.h>

@property (nonatomic, strong) QRCode *scanner;

// scan qrcode
self.scanner = [[QRCode alloc] initWithAutoRemoveSubLayers:NO lineWidth:4.0 strokeColor:[UIColor blueColor] maxDetectedCount:20];

[self.scanner scanCode:self.view completion:^(NSString * stringValue) {
    NSLog(@"%@", stringValue);
}];

// generate qrcode
CIColor *color = [CIColor colorWithRed:0 green:0 blue:0];
CIColor *backColor = [CIColor colorWithRed:1 green:1 blue:1];

self.iconView.image = [self.scanner generateImage:@"Hello SwiftQRCode" avatarImage:nil avatarScale:0.3 color:color backColor:backColor];

```

