//
//  ViewController.swift
//  Activity Indicators
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
    }
    
    
    @IBAction func dur(_ sender: Any) {
        
        indicator.stopAnimating()
        indicator.isHidden = true
    }
    @IBAction func basla(_ sender: Any) {
        indicator.startAnimating()
        indicator.isHidden = false
    }
}

