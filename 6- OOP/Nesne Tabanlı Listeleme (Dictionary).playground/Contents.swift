import UIKit

class Ogrenci {
    
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no:Int,ad:String,sinif:String)
    {
        
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
    
}

var o1 = Ogrenci(no:100,ad:"Ahmet",sinif:"11F")
var o2 = Ogrenci(no:101,ad:"Ali",sinif:"11E")
var o3 = Ogrenci(no:102,ad:"Asım",sinif:"11D")
var o4 = Ogrenci(no:103,ad:"Ayşe",sinif:"11C")
var o5 = Ogrenci(no:104,ad:"Ayla",sinif:"11B")


var ogrenciListesi = [Int:Ogrenci]()

ogrenciListesi[o1.no!] = o1
ogrenciListesi[o2.no!] = o2
ogrenciListesi[o3.no!] = o3
ogrenciListesi[o4.no!] = o4
ogrenciListesi[o5.no!] = o5

for (no,nesne) in ogrenciListesi {
    print("*********")
    print("Öğrenci No:\(no)")
    print("Öğrenci Ad: \(nesne.ad!)")
    print("öğrenci Sınıf: \(nesne.sinif!)")
    
}



