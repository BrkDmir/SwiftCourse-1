import UIKit

class Kisiler {
    
    
    var ad: String?
    var yas: Int?
    
    init() {}
    
    init(ad:String, yas:Int) {
        self.ad = ad    // shadowing
        self.yas = yas  // shadowing
    }
    
}

let kisi = Kisiler()

kisi.ad = "Berkay"
kisi.yas = 22

let kisi2 = Kisiler(ad: "Ahmet", yas: 35)













