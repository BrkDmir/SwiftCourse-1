//
//  ViewController.swift
//  Nesnelerin Swift Sınıfına Bağlanması
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var etiket: UILabel!
    
    
    
    
    @IBOutlet var etiketLER: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiket.text = "Merhaba"
    }

    @IBAction func buton(_ sender: Any) {
        
        etiket.text = "Buton Tıklandı"
        
        etiketLER[0].text = "Merhaba-1"
        etiketLER[1].text = "Merhaba-2"
        
    }
    
}

