//
//  ViewController.swift
//  Background Modes Ses
//
//  Created by Berkay DEMİR on 7.09.2023.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var sesOynatici = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        }catch{
                print(error.localizedDescription)
            }
        
        
    }

    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop()
    }
    
    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
    }
}


