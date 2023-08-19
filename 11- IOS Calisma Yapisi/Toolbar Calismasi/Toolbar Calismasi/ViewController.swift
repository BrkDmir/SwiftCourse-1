//
//  ViewController.swift
//  Toolbar Calismasi
//
//  Created by Berkay DEMİR on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func homebutton(_ sender: Any) {
        etiket.text = "Home"
    }
    @IBAction func oynatButton(_ sender: Any) {
        etiket.text = "Oynat"
        
    }
    @IBAction func geriButton(_ sender: Any) {
        etiket.text = "Geri"
        
    }
    @IBOutlet weak var etiket: UILabel!
}


