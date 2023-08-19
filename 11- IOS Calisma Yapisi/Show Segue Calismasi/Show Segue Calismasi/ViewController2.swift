//
//  ViewController2.swift
//  Show Segue Calismasi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
    }
    

    @IBAction func geri(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

    @IBAction func goto3(_ sender: Any) {
        
        /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa3") as! ViewController3
        navigationController?.pushViewController(gidilecekVC, animated: true) */
        
        
    }
}
