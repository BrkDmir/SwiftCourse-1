//
//  ViewControllerB.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Berkay DEMİR on 14.08.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    var mesajB:String?
    @IBOutlet weak var etiketB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiketB.text = mesajB!
    }
    
    
}
