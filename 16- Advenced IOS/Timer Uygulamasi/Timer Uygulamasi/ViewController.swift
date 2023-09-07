//
//  ViewController.swift
//  Timer Uygulamasi
//
//  Created by Berkay DEMİR on 7.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    var sayici:Timer?
    var sayac1:Int = 1
    
    
    @IBAction func basla(_ sender: Any) {
        
        sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ileriSay), userInfo: nil, repeats: true)
        
    }
    @objc func ileriSay(){
        ciktiLabel.text = String(sayac1)
        sayac1 += 1
        if sayac1 > 6 {
            sayici?.invalidate()
            ciktiLabel.text = "Süre bitti"
            sayac1 = 1
        }
        
    }
    
    @IBOutlet weak var ciktiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
}

