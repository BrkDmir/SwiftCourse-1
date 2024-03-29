//
//  ViewController.swift
//  Kullanici Etkilesimi Calismasi
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    
    @IBAction func basitAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Basit Alert", message: "Bu bir basit alerttir", preferredStyle: .alert)
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            print("İptal Tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("Tamam Tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated:true)
    }
    
    @IBAction func ozelAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Özel Alert", message: "Bu bir özel alerttir", preferredStyle: .alert)
        alertController.addTextField{
            textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
            
        }
        alertController.addTextField{
            textfield in
            textfield.placeholder = "Şifre"
            textfield.isSecureTextEntry = true
            
        }
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in
            print("Kaydet Tıklandı")
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            self.labelSonuc.text = "Email: \(alinanEmail) - Şifre: \(alinanSifre)"
            
        }
        alertController.addAction(kaydetAction)
        self.present(alertController,animated: true)
    }
    @IBAction func asButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Action Sheet", message: "Bu bir action sheettir", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            print("İptal Tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("Tamam Tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated:true)
        
    }
}





