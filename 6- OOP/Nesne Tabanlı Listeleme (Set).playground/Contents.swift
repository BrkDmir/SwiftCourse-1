import UIKit

class Ogrenci:Equatable,Hashable {
    
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no:Int,ad:String,sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
        
    }
    
    var hashValue: Int {
        get {
            return no.hashValue
        }
    }
    
    static func ==(lhs:Ogrenci,rhs:Ogrenci) -> Bool {
        return lhs.no == rhs.no
    }
}


var o1 = Ogrenci(no:100,ad:"Ahmet",sinif:"11F")
var o2 = Ogrenci(no:101,ad:"Ali",sinif:"11E")
var o3 = Ogrenci(no:102,ad:"Asım",sinif:"11D")
var o4 = Ogrenci(no:103,ad:"Ayşe",sinif:"11C")
var o5 = Ogrenci(no:104,ad:"Ayla",sinif:"11B")

var ogrenciListesi = Set <Ogrenci>()

ogrenciListesi.insert(o1)
ogrenciListesi.insert(o2)
ogrenciListesi.insert(o3)
ogrenciListesi.insert(o4)
ogrenciListesi.insert(o5)

for i in ogrenciListesi {
    print("**********")
    
    print("Öğrenci No: \(i.no!)")
    print("Öğrenci Ad:\(i.ad!)")
    print("Öğrenci Sınıf: \(i.sinif!)")
    
}
