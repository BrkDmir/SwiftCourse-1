//
//  ViewController2.swift
//  Notification Center Uygulama
//
//  Created by Berkay DEMİR on 7.09.2023.
//

import UIKit

class ViewController2: UIViewController {

    @IBAction func gonder(_ sender: Any) {
        
        let kisi = Kisiler(kisi_ad: "Ahmet", kisi_yas: "20")
        NotificationCenter.default.post(name: .bildirimAdi, object: nil, userInfo: ["mesaj":"merhaba","tarih":Date(),"nesne":kisi])
        dismiss(animated: true,completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
