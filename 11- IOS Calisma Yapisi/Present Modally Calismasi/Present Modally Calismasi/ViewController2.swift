//
//  ViewController2.swift
//  Present Modally Calismasi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goto3(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa3") as! ViewController3
        self.present(gidilecekVC,animated: true, completion: nil)
    }
    
    @IBAction func tiklanDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
