//
//  ViewController.swift
//  Veri Transferi Yaygın yöntem
//
//  Created by Berkay DEMİR on 15.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var girdiAlani: UITextField!
    @IBAction func gonderB(_ sender: Any) {
        let gonderilecekMesaj = girdiAlani.text!
        performSegue(withIdentifier: "aToB", sender: gonderilecekMesaj)
        
        
    }
    @IBAction func gonderC(_ sender: Any) {
        let gonderilecekMesaj = girdiAlani.text!
        performSegue(withIdentifier: "aToC", sender: gonderilecekMesaj)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "aToB"{
            guard let veri = sender as? String else {return}
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = veri
        }
        
        if segue.identifier == "aToC"{
            guard let veri = sender as? String else {return}
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = veri
        }
    }
}

