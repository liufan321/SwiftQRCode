//
//  ViewController.m
//  QRcodeDemoObjc
//
//  Created by 刘凡 on 15/6/24.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeDemoObjc-Swift.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@property (nonatomic, strong) QRCode *scanner;
@end

@implementation ViewController

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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.iconView.image = [QRCode generateImage:@"我就是刀哥" avatarImage:[UIImage imageNamed:@"avatar.jpg"] avatarScale:0.25];
}

@end
