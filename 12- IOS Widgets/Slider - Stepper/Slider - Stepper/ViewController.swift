//
//  ViewController.swift
//  Slider - Stepper
//
//  Created by Berkay DEMİR on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sliderEtiket: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    @IBAction func sliderDegisim(_ sender: UISlider) {
        
    }
    
    @IBAction func tikla(_ sender: Any) {
        print("Slider Değer: \(slider.value)")
    }
}

