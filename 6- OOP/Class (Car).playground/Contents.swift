import UIKit

class Car {
    
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int){
        
            hiz! += kacKm
        }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func info(){
        print("Renk: \(renk!)")
        print("Hız: \(hiz!)")
        print("Çalışıyor mu?: \(calisiyorMu!)")
        
    }
}

var bmw = Car()

bmw.renk = "Mavi"
bmw.hiz = 180

bmw.calistir()
bmw.hizlan(kacKm: 20)
bmw.yavasla(kacKm: 10)
bmw.info()



















































