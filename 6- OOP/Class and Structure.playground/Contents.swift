import UIKit

struct Urun {
    var ad:String?
    var fiyat:Double?
}

class Araba {
    var renk:String?
    var kapasite:Int?
}
// Nesne oluşturma

var laptop = Urun()
var bmw = Araba()

// Nesnelere değer atama

laptop.ad = "Macbook"
laptop.fiyat = 22999.99

if let name = laptop.ad {
    
    print(name)
}else{ print("Laptop ismi null")
    
}
if let price = laptop.fiyat {
    
    print(price)
}else{ print("Laptop fiyatı null")
    
}

// Veri güncelleme

laptop.fiyat = 23000.0



bmw.renk = "Mavi"
bmw.kapasite = 2

if let color = bmw.renk {
    print(color)
}
if let seat = bmw.kapasite {
    print(seat)
}


var tv = Urun()

tv.ad = "Samsung"
tv.fiyat = 7000.0

var limuzin = Araba()

limuzin.renk = "Siyah"
limuzin.kapasite = 7









