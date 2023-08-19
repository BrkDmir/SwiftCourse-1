//
//  ViewControllerC.swift
//  Veri Transferi Yaygın yöntem
//
//  Created by Berkay DEMİR on 15.08.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiketC.text = mesajC!
        
    }
    

   

}
