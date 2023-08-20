//
//  ViewController.swift
//  VideoView
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func basla(_ sender: Any) {
        guard let dosyaYolu = Bundle.main.path(forResource: "video", ofType: "mp4")else{return}
        
        let oynatici = AVPlayer(url: URL(fileURLWithPath: dosyaYolu))
        let oynaticiKontrol = AVPlayerViewController()
        oynaticiKontrol.player = oynatici
        
        present(oynaticiKontrol,animated:true){
            oynatici.play()
        }
    }
}

