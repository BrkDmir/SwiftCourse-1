//
//  ViewController.swift
//  Kod ile Segue Geçişi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goto2(_ sender: Any) {
        
        let nesne = Kisiler(kisiId: 222, kisiAd: "Berkay")
        performSegue(withIdentifier: "gofrom1to2", sender: nesne)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let gelenVeri = sender as? Kisiler else {return}
        
        print("Gelen Veri : \(gelenVeri.kisiId!), \(gelenVeri.kisiAd!)")
        if segue.identifier == "gofrom1to2"{
            print("1'den 2'ye geçiş yapıldı.")
        }
    }
    
}

