//
//  ViewController.swift
//  Sayfalar arasi Gecis
//
//  Created by Berkay DEMİR on 14.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBOutlet weak var girdiAlani: UITextField!
    
    
    
    @IBAction func gonder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewController2
        let gonderilecekMesaj = girdiAlani.text
        gidilecekVC.mesaj = gonderilecekMesaj!
        let gidecekKisi = Kisiler(kisiId: 52, kisiAd: "Berkay")
        gidilecekVC.kisi = gidecekKisi
        
        
        //self.present(gidilecekVC, animated: true)
        //Modal geçiş
        
        self.navigationController?.pushViewController(gidilecekVC, animated: true)
        
        
    }
}

