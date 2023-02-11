import UIKit

// Aynı metoda farklı dizilimde ve türde veri türü kombinasyonlarıyla erişebilmeye overloading denir


class Hesapla {
    
    func Topla(sayi1:Int, sayi2:Int, ad:String) {
        
        print("Toplama yapan: \(ad) Toplam: \(sayi1 + sayi2)")
        
    }
    
    func Topla(sayi1:Int,sayi2:Double) {
        
        print("Toplam: \(Double(sayi1) + sayi2)")
        
    }
    
    func Topla(sayi1:Double,sayi2:Int) {
        
        print("Toplam: \(sayi1 + Double(sayi2))")
        
    }
    
    func Topla(sayi1:Double,sayi2:Double) {
        
        print("Toplam: \(sayi1 + sayi2)")
        
    }
    
}



