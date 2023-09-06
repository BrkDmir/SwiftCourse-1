//
//  ViewController2.swift
//  User Default Login Uygulamasi
//
//  Created by Berkay DEMİR on 2.09.2023.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        labelSonuc.text = "Hoşgeldin \(ka)"
    }
    
    @IBAction func cikisYap(_ sender: Any) {
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        exit(-1)
    }
    
}
