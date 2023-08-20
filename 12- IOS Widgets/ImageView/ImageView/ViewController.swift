//
//  ViewController.swift
//  ImageView
//
//  Created by Berkay DEMİR on 20.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func resim2Tikla(_ sender: Any) {
        imageView.image = UIImage(named: "resim2")
    }
    @IBAction func resim1Tikla(_ sender: Any) {
        imageView.image = UIImage(named: "resim")
    }
}

