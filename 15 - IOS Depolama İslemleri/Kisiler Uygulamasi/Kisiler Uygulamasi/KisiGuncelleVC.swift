//
//  KisiGuncelleVC.swift
//  Kisiler Uygulamasi
//
//  Created by Berkay DEMİR on 4.09.2023.
//

import UIKit

class KisiGuncelleVC: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var kisiAdTextField: UITextField!
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let k = kisi else{return}
        kisiAdTextField.text = k.kisi_ad
        kisiTelTextField.text = k.kisi_tel
        
    }
    
    @IBAction func guncelleButton(_ sender: Any) {
        
        guard let ad = kisiAdTextField.text else {return}
        guard let tel = kisiTelTextField.text else {return}
        guard let k = kisi else {return}
        k.kisi_ad = ad
        k.kisi_tel = tel
        appDelegate.saveContext()
        
        
        
    }
    
    
    
}
