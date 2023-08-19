//
//  ViewController3.swift
//  Present Modally Calismasi
//
//  Created by Berkay DEMİR on 12.08.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func goto1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa1") as! ViewController
        self.present(gidilecekVC,animated: true, completion: nil)
    }
    

    @IBAction func goto2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyboard.instantiateViewController(identifier: "sayfa2") as! ViewController2
        self.present(gidilecekVC,animated: true, completion: nil)
    }
}









