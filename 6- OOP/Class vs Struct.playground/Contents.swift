import UIKit

/*  Class: referans tiplidir
    Struct: değişken gibi davranır, kalıtım yok
 
 
 Class yapısı hafıza yönetimi için daha kullanışlıdır
 Struct yapısı daha basit ve pratik işlemler için uygundur
 */


class Ogrenci {
    var ad : String?
}

var ogr1 = Ogrenci()
ogr1.ad = "Berkay"

var ogr2 = ogr1
ogr2.ad = "Ahmet"

print(ogr1.ad!)


struct Kopek {
    
    var renk : String?
}

var kpk1 = Kopek()
kpk1.renk = "Beyaz"

var kpk2 = kpk1
kpk2.renk = "Siyah"

print(kpk1.renk!)
