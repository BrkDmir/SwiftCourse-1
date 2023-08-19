//
//  ViewController.swift
//  Present Modally Calismasi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goto2(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        self.present(gidilecekVC, animated: true)
        
    }
    
}





