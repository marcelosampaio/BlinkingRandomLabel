//
//  ViewController.swift
//  BlinkingRandomLabel
//
//  Created by marcelosampaio on 05/06/2022.
//  Copyright (c) 2022 marcelosampaio. All rights reserved.
//

import UIKit
import BlinkingRandomLabel
 
class ViewController: UIViewController {
 
    var isBlinking = false
    let blinkingLabel = BlinkingRandomLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Setup the BlinkingRandomLabel
        blinkingLabel.text = "Blinking Label!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20) // UIFont.systemFontOfSize(20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
 
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
 
    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
 
}

