//
//  ViewController.swift
//  XKToastExtension
//
//  Created by kenneth on 04/27/2022.
//  Copyright (c) 2022 kenneth. All rights reserved.
//

import UIKit
import Toast_Swift
import XKToastExtension

class ViewController: UIViewController {
    
    let robotImage = UIImage(named: "robot")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ToastManager.shared.position = .top
        ToastManager.shared.duration = 2.0
        ToastManager.shared.style.imageSize = CGSize(width: 32, height: 32)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var touchNumber = 0
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        /*
        view.makeToast("message",
                       duration: ToastManager.shared.duration,
                       position: .center,
                       title: "title",
                       image: robotImage,
                       style: ToastManager.shared.style) { didTap in
            print("did tap")
        }
         */
        let message = "hello world yo \(touchNumber)"
        view.xk_makeToast(message, duration: 5)
        touchNumber += 1
    }
}

