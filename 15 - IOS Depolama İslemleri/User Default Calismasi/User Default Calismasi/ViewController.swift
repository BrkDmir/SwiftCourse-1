//
//  ViewController.swift
//  User Default Calismasi
//
//  Created by Berkay DEMİR on 2.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Veri Yazma
        
        let d = UserDefaults.standard
        d.set("Berkay", forKey: "ad")
        d.set(22, forKey: "yas")
        d.set(1.80, forKey: "boy")
        d.set(true, forKey: "medeniDurum")
        
        let arkadasListesi:[String] = ["Ali","Veysel","ece"]
        
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirler:[String:String] = ["52":"Ordu","62":"Tunceli","66":"Yozgat","05":"Amasya"]
        
        d.set(sehirler, forKey: "dict")
        
        // Veri Okuma
        
        let ad = d.string(forKey: "ad") ?? "İsim Yok"
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["52"]!)
        
        // Veri Silme
        
        d.removeObject(forKey: "ad")
        
        
        // Veri Güncelleme
        
        d.set("yeni isim", forKey: "ad")
        
    }


}

