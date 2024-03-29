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

    var audioPlayer : AVAudioPlayer?
    var catsMuted : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func MuteToggle(_ sender: UISwitch) {
        if sender.isOn == true{
            catsMuted = true
        }else {
            catsMuted = false
        }
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //print("IS this button working?")
        
        /*
         bottom to top cat piano button
         
         button 1 = tag 1       drums board
         button 2 = tag 2       button on e = tag 7
         button 3 = tag 3       button two = tag 8
         button 4 = tag 4       button three = tag 9
         button 5 - tag 5       button four = tag 10
         button 6 = tag 6
         
         do a  get tag -1 then use the value to access an array containing sound file string
         */
        
        let catSound = ["cat-meow1","cat-meow2","cat-meow3","cat-meow4","cat-meow5","cat-meow6","beat_heavy","beat_jug","drum_bass","drum_quick"]
        var meowName = ""
        var tagName: Int //used to store tag name - 1 to get button 1-6 into array index 0-5
        
        tagName = sender.tag - 1
        meowName = catSound[tagName]
        //print(meowName + " " + String(tagName))
        //play sound
        if catsMuted == false {
        if let soundResource = Bundle.main.url(forResource: meowName, withExtension: "wav", subdirectory: "Sounds"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: soundResource)
                
                audioPlayer?.play()
            }catch {
                print(error)
            }
            
            
        }
        }
        
    }
    
    @IBAction func menuClick(_ sender: Any) {
    }
    
    
}

