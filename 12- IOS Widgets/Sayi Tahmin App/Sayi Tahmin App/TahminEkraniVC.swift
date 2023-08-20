//
//  TahminEkraniVC.swift
//  Sayi Tahmin App
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit

class TahminEkraniVC: UIViewController {
    
    
    var rastgeleSayi:Int?
    var hak:Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rastgeleSayi = Int(arc4random_uniform(100))
        guard let uretilenSayi = rastgeleSayi else {return} // 0 - 100 arası rastgele sayı
        print("Rastgele sayı: \(uretilenSayi)")
    }
    
    @IBOutlet weak var kalanHak: UILabel!
    @IBOutlet weak var girdiAlani: UITextField!
    @IBOutlet weak var yardımEtiket: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let gelenVeri = sender as? Bool else {return}
        let gidilecekVC = segue.destination as! SonucEkraniVC
        gidilecekVC.sonuc = gelenVeri
    }
    
    @IBAction func tahmin(_ sender: Any) {
        
        yardımEtiket.isHidden = false
        hak -= 1
        
        
        guard let tahmin = Int(girdiAlani.text!) else {return}
        if hak > 0 {
            if tahmin == rastgeleSayi!{
                let sonuc = true
                performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                
            }else if tahmin > rastgeleSayi!{
                yardımEtiket.text = "Azalt"
                kalanHak.text = "Kalan Tahmin Hakkı: \(hak)"
                
            }else if tahmin < rastgeleSayi!{
                yardımEtiket.text = "Arttır"
                kalanHak.text = "Kalan Tahmin Hakkı: \(hak)"
                
            }
            
        }else{
            let sonuc = false
            performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
        }
        girdiAlani.text = ""
        
    }
}
