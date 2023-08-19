//
//  ViewController.swift
//  Show Segue Calismasi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goto2(_ sender: Any) {
        /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa2") as! ViewController2
         navigationController?.pushViewController(gidilecekVC, animated: true) */
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gofrom1to2"{
            print("1'den 2'ye geçiş algılandı") }
    }
    
}

