import UIKit

class Kisiler {
    
    var ad : String?
    var yas : Int?
    var adres : Adres?
    
    init(ad:String,yas:Int,adres:Adres){
        
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
}

class Adres {
    var il : String?
    var ilce : String?
     
    
    init(il:String,ilce:String){
        
        self.il = il
        self.ilce = ilce
    }
}


let adres = Adres(il: "Bursa", ilce: "Osmangazi")
let kisi = Kisiler(ad: "Berkay", yas: 22, adres: adres)

print("Kişi ad: \(kisi.ad!)")
print("Kişi ad: \(kisi.yas!)")
print("Kişi ad: \(kisi.adres!.il!)")
print("Kişi ad: \(kisi.adres!.ilce!)")


class Kategori {
    
    var kategoriID:Int?
    var kategoriAd:String?
    
    init(kategoriID:Int,kategoriAd:String) {
        self.kategoriID = kategoriID
        self.kategoriAd = kategoriAd
    }
}

class Yonetmen {
    var yonetmenID:Int?
    var yonetmenAd:String?
    
    init(yonetmenID:Int,yonetmenAd:String){
        self.yonetmenID = yonetmenID
        self.yonetmenAd = yonetmenAd
    }
}

class Filmler {
    
    var filmID:Int?
    var filmAd:String?
    var filmYıl:Int?
    var kategori:Kategori?
    var yonetmen:Yonetmen?
    
    init(filmID:Int,filmAd:String,filmYıl:Int,kategori:Kategori,yonetmen:Yonetmen){
        self.filmID = filmID
        self.filmAd = filmAd
        self.filmYıl = filmYıl
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}


var k1 = Kategori(kategoriID: 1, kategoriAd: "Dram")
var k2 = Kategori(kategoriID: 2, kategoriAd: "Korku")
var k3 = Kategori(kategoriID: 3, kategoriAd: "Gerilim")


var y1 = Yonetmen(yonetmenID: 1, yonetmenAd: "Nuri Bilge CEYLAN")
var y2 = Yonetmen(yonetmenID: 2, yonetmenAd: "Quetin TARANTİNO")
var y3 = Yonetmen(yonetmenID: 3, yonetmenAd: "Christopher NOLAN")

var f1 = Filmler(filmID: 1, filmAd: "Django", filmYıl: 2013, kategori: k1, yonetmen: y2)
var f2 = Filmler(filmID: 2, filmAd: "Inception", filmYıl: 2006, kategori: k3, yonetmen: y3)

print("Film ID'si: \(f1.filmID!)")
print("Film Adı: \(f1.filmAd!)")
print("Film Yılı: \(f1.filmYıl!)")
print("Film Kategorisi: \(f1.kategori!.kategoriAd!)")
print("Film Yönetmeni: \(f1.yonetmen!.yonetmenAd!)")




