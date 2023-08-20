//
//  ViewController.swift
//  Switch - Segmented Control
//
//  Created by Berkay DEMİR on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBOutlet weak var UIswitch: UISwitch!
    
    
    
    @IBAction func switchDurum(_ sender: UISwitch) {
        
        if sender.isOn{
            print("Switch açık")
        }else {
            print("Switch Kapalı")
        }
    }
    
    @IBAction func tikla(_ sender: Any) {
        var durum:Bool = UIswitch.isOn
        print("Switch Durumu: \(durum)")
    }
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0{
            print("Segmented açık")
        }else {
            print("Segmented Kapalı")
        }
    }
}

