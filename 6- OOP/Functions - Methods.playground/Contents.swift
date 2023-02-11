import UIKit

// Eğer sınıf içinde kullanıyorsak metod, sınıf haricinde kullanıyorsak fonksiyon diyoruz.

// Geri dönüşü olan ve olmayan olmak üzere 2 tip metod vardır.


func selamla() {
    
    let sonuc = "Merhaba Berkay"
    print(sonuc)
}
selamla()


func selamla2() -> String {
    let sonuc = "Merhaba Berkay"
    return sonuc
}

var selam : String = selamla2()
print(selam)

func selamla3(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}

selamla3(isim: "Berkay")

func toplama() {
    let toplam = 30 + 40
    print(toplam)
}
toplama()

func toplama2(sayi1:Int,sayi2:Int) -> Int{
    return sayi1 + sayi2
}

var sonuc: Int = toplama2(sayi1: 52, sayi2: 66)
print(sonuc)



print()
print("*******************************")
print()

// *********** Class ve Structure içinden metodlara erişme **********

class Math {
    
    func topla(sayi1: Int,sayi2:Int){
        let toplam = sayi1+sayi2
        print("Toplam: \(toplam)")
    }
    func cikar(sayi1:Double,sayi2:Double) -> Double {
        return sayi1-sayi2
    }
    func carp(sayi1:Int,sayi2:Int,isim:String){
        let sonuc = sayi1*sayi2
        print("Çarpma yapan isim: \(isim) Sonuç: \(sonuc)")
        
    }
    func bol(sayi1:Int,sayi2:Int) -> String {
        return "Bölme: \(sayi1 / sayi2)"
    }
    
}

var islem = Math()

islem.topla(sayi1: 10, sayi2: 20)
var cikarma = islem.cikar(sayi1: 100.0, sayi2: 40.0)
print(cikarma)

islem.carp(sayi1: 30, sayi2: 20, isim: "Berkay")
print(islem.bol(sayi1: 100, sayi2: 50))


