//
//  ViewController.swift
//  User Default Login Uygulamasi
//
//  Created by Berkay DEMİR on 2.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    @IBOutlet weak var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kAdi = d.string(forKey: "kullaniciAdi") ?? "bos"
        let sifre = d.string(forKey: "sifre") ?? "bos"
        
        if kAdi != "bos" && sifre != "bos"{
        performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
        }
   
    }
    @IBAction func buttonGiris(_ sender: Any) {
        
        guard let kAdi = textFieldKullaniciAdi.text, let sifre = textFieldSifre.text else {return}
        
        if kAdi == "admin" && sifre == "1234"{
            
            d.set(kAdi, forKey: "kullaniciAdi")
            d.set(sifre, forKey: "sifre")
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)

            
        }else{
            print("Hatalı Giriş")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }

}

