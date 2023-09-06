//
//  KisiDetayVC.swift
//  Kisiler Uygulamasi
//
//  Created by Berkay DEMİR on 4.09.2023.
//

import UIKit

class KisiDetayVC: UIViewController {

    @IBOutlet weak var kisiAdLAbel: UILabel!
    @IBOutlet weak var kisiTelLabel: UILabel!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let k = kisi else{return}
        kisiAdLAbel.text = k.kisi_ad
        kisiTelLabel.text = k.kisi_tel
        
    }
    

    

}
