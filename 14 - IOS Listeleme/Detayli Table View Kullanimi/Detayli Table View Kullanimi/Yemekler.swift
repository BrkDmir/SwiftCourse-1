//
//  Yemekler.swift
//  Detayli Table View Kullanimi
//
//  Created by Berkay DEMİR on 31.08.2023.
//

import Foundation

class Yemekler {
    
    var yemekId: Int?
    var yemekAdi: String?
    var yemekResimAdi: String?
    var yemekFiyat: Double?
    
    init(){
    }
    
    init(yemekId:Int, yemekAdi:String, yemekResimAdi:String, yemekFiyat:Double) {
        self.yemekId = yemekId
        self.yemekAdi = yemekAdi
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat
    }
    
}


