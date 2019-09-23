//
//  ViewController.swift
//  ISCG7436 Sound App
//
//  Created by Jayson Jury on 21/09/19.
//  Copyright © 2019 Jayson Jury. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var soundplayer : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("IS this working?")
    }
    
    @IBAction func menuClick(_ sender: Any) {
    }
    
    
}

