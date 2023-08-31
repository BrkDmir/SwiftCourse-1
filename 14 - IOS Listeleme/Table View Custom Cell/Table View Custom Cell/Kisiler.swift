//
//  Kisiler.swift
//  Table View Custom Cell
//
//  Created by Berkay DEMİR on 29.08.2023.
//

import Foundation

class Kisiler{
    
    var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init(){
        
    }
    init(kisiId:Int,kisiAd:String,kisiTel:String){
        self.kisiAd = kisiAd
        self.kisiId = kisiId
        self.kisiTel = kisiTel
        
    }
}
