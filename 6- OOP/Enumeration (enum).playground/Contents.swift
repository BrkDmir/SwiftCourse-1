import UIKit

enum Renkler {
    case Beyaz
    case Siyah
}

var renk = Renkler.Siyah

switch renk {
case .Beyaz:
    print("White")
case .Siyah:
    print("Black")
    
}

enum KonserveBoyut {
    
    case Kucuk
    case Orta
    case Buyuk
    
    
}


func ucretAl(boyut: KonserveBoyut) {
    
    switch boyut {
    case .Kucuk:
        print("Küçük konserve: 20 TL")
    case .Orta:
        print("Orta konserve: 30 TL")
    case .Buyuk:
        print("Büyük konserve: 40TL")
        
    }
    
}

ucretAl(boyut:KonserveBoyut.Orta)




