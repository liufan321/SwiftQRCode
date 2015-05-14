//
//  ViewController.swift
//  QRCodeDemo
//
//  Created by 刘凡 on 15/5/15.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

import UIKit
import AVFoundation
import QRCode

class ViewController: UIViewController {

    let scanner = QRCode(autoRemoveSubLayers: false)
    @IBOutlet weak var iconView: UIImageView!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        scanner.scanCode(view) { (stringValue) in
            println(stringValue)
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        iconView.image = scanner.generateImage("我就是刀哥", avatarImage: UIImage(named: "avatar"), avatarScale: 0.3)
    }
}

