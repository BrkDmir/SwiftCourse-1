//
//  ViewControllerB.swift
//  Veri Transferi Yaygın yöntem
//
//  Created by Berkay DEMİR on 15.08.2023.
//

import UIKit

class ViewControllerB: UIViewController {
    
    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiketB.text = mesajB!
        
    }
    
    


}
