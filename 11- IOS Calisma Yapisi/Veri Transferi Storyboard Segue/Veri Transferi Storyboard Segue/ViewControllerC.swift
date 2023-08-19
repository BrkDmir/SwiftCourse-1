//
//  ViewControllerC.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Berkay DEMİR on 14.08.2023.
//

import UIKit

class ViewControllerC: UIViewController {
    var mesajC:String?
    @IBOutlet weak var etiketC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiketC.text = mesajC!
        
    }
    

    
    
}
