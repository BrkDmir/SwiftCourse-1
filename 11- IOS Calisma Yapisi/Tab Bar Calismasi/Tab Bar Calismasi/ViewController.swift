//
//  ViewController.swift
//  Tab Bar Calismasi
//
//  Created by Berkay DEMİR on 15.08.2023.
//

import UIKit

class ViewController: UIViewController {
    var profilSayac = 0
    var isSayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func profilArttir(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let profileTabBarItem = tabItems[0]
            profilSayac += 1
            profileTabBarItem.badgeColor = UIColor.purple
            profileTabBarItem.badgeValue = String(profilSayac)
            
        }
        
        
    }
    
    
    @IBAction func isArttir(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let workTabBarItem = tabItems[1]
            isSayac += 1
            workTabBarItem.badgeColor = UIColor.yellow
            workTabBarItem.badgeValue = String(isSayac)
            
        }
        
        
        
    }
    
    
    
}

