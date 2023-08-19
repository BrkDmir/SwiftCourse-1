//
//  ViewController3.swift
//  Show Segue Calismasi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func goto1(_ sender: Any) {
  /*      let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa1") as! ViewController
        navigationController?.pushViewController(gidilecekVC, animated: true) */
    }
    
    @IBAction func goto2(_ sender: Any) { /*
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa2") as! ViewController2
        navigationController?.pushViewController(gidilecekVC, animated: true) */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom3to1"{
            print("3'ten 1'e geçiş algılandı")
        }
        if segue.identifier == "gofrom3to2"{
            print("3'ten 2'ye geçiş algılandı")
        }
    }
}
