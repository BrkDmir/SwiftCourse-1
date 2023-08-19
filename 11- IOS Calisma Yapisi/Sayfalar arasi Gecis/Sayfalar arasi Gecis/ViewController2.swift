//
//  ViewController2.swift
//  Sayfalar arasi Gecis
//
//  Created by Berkay DEMİR on 14.08.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    var mesaj:String?
    var kisi = Kisiler()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        print("Kişi ID: \(kisi.kisiId!)")
        print("Kişi Ad: \(kisi.kisiAd!)")
        
        guard mesaj != nil else {return}
        etiket.text = mesaj!
    }
    
    
    @IBOutlet weak var etiket: UILabel!
    
    
}
