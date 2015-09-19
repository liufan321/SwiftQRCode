# SwiftQRCode
Simple QRCode detector and generator in Swift

## Features

* QRCode detector
* QRCode generate

## Requirements

* iOS 8.0+ 
* Xcode 7.0

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

* import framework

```swift
import SwiftQRCode
```

* scan qrcode

```swift
let scanner = QRCode()

override func viewDidLoad() {
    super.viewDidLoad()

    scanner.prepareScan(view) { (stringValue) -> () in
        println(stringValue)
    }
    scanner.scanFrame = view.bounds
}

override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)

    // start scan
    scanner.startScan()
}
```

* generate qrcode image

```swift
// generate qrcode
iconView.image = QRCode.generateImage("Hello SwiftQRCode", avatarImage: UIImage(named: "avatar"), avatarScale: 0.3)
```

### Objective-C

* import "ProjectName-Swift.h"

> 头文件格式是 "项目名称-Swift.h"

```objc
#import "QRCodeDemoObjc-Swift.h"
```

* scan qrcode

```objc
@property (nonatomic, strong) QRCode *scanner;

- (void)viewDidLoad {
    [super viewDidLoad];

    // alloc and prepare for scan
    self.scanner = [[QRCode alloc] init];
    [self.scanner prepareScan:self.view completion:^(NSString * __nonnull stringValue) {
        NSLog(@"%@", stringValue);
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    // start scan
    [self.scanner startScan];
}
```

* generate qrcode image

```objc
// generate qrcode
[QRCode generateImage:@"Hello SwiftQRCode" avatarImage:[UIImage imageNamed:@"avatar.jpg"] avatarScale:0.25];
```

