//
//  ViewController.swift
//  User Default Sayac Uygulamasi
//
//  Created by Berkay DEMİR on 2.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sayacLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        var sayac = d.integer(forKey: "sayac")
        sayac += 1
        d.set(sayac, forKey: "sayac")
        sayacLabel.text = "Sayaç: \(sayac)"
        
        
    }
}

