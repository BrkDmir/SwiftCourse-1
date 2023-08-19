//
//  ViewController.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Berkay DEMİR on 14.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var girdiAlani: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gidecekMesaj = girdiAlani.text!
        
        if segue.identifier == "aToB"{
            print("A'dan B'ye geçiş")
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
        }
        
        if segue.identifier == "aToC"{
            print("A'dan B'ye geçiş")
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = gidecekMesaj
        }
    }

}





