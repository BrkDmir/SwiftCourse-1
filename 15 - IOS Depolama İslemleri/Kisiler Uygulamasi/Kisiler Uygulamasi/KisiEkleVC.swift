//
//  KisiEkleVC.swift
//  Kisiler Uygulamasi
//
//  Created by Berkay DEMİR on 4.09.2023.
//

import UIKit

class KisiEkleVC: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    @IBOutlet weak var kisiAdTextField: UITextField!
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func ekleButton(_ sender: Any) {
        
        guard let ad = kisiAdTextField.text else{return}
        guard let tel = kisiTelTextField.text else{return}
        
        let kisi = Kisiler(context: context)
        
        kisi.kisi_ad = ad
        kisi.kisi_tel = tel
        
        appDelegate.saveContext()
    }
    

}
