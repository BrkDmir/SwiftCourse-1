//
//  SonucEkraniVC.swift
//  Sayi Tahmin App
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        print(sonuc!)
        if sonuc! {
            labelSonuc.isHidden = false
            labelSonuc.text = "Kazandınız"
            imageViewSonuc.image = UIImage(named: "Mutlu")
        }else{
            labelSonuc.isHidden = false
            labelSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "Uzgun")
            
        }
    }
    @IBOutlet weak var imageViewSonuc: UIImageView!
    @IBOutlet weak var labelSonuc: UILabel!
    var sonuc:Bool?
    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
