//
//  ViewController.swift
//  Navigation Controller Calismasi
//
//  Created by Berkay DEMİR on 15.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }


    @IBAction func segmentTikla(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("First Tiklandi")
        case 1:
            print("Second Tiklandi")
        default:
            break
        }
    }
}

