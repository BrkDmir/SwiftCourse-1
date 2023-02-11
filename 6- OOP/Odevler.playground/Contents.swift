import UIKit

// Ödev - 1

/*Parametre olarak girilen dereceyi fahrenhiet'a dönüştüren
 ve bu değeri geri döndüren metod*/


func donusum (derece d:Double) -> Double {
    
    let sonuc = d * 1.8 + 32
    
    return sonuc
    
}

var deger = donusum(derece: 25.6)
print(deger)


// Ödev - 2

/*Kenarları parametre olarak girilen ve dikdörtgen
 çevresini hesaplayan metod*/

func cevreHesapla (kısaKenar kısa:Double, uzunKenar uzun:Double) {
    
    let sonuc = kısa * 2 + uzun * 2
    print("Dikdörtgenin çevresi: \(sonuc)")
    
}

cevreHesapla(kısaKenar: 5, uzunKenar: 10)

// Ödev - 3

/* Parametre olarak girilen sayının faktöriyel değerini hesaplayıp
 geri döndüren metod*/

func fakHesapla (sayi:Int) -> Int {
    
    if sayi == 0 {return 1}
    
    var fak = 1
    
    for i in stride(from: sayi, through: 1, by: -1) {
        fak *= i
    }
    return fak
}

var faktoriyel = fakHesapla(sayi: 5)
print(faktoriyel)



// Ödev - 4

/*Parametre olarak girilen kelime ve harf için harfin kelime
 içinde kaç adet olduğunu gösteren metod*/

func harfSayacı (kelime:String, harf:Character) -> Int {
    
    var sayac = 0
    
    for i in kelime {
        if i == harf {sayac += 1}
    }
    return sayac
    

}

var sonuc = harfSayacı(kelime: "ada", harf: "a")
print(sonuc)


// Ödev - 5

/*Parametre olarak girilen kenar sayısına göre iç açılar toplamını
 hesaplayıp sonucu geri döndüren metod*/

func aciToplamı (kenarSayisi kenar:Int) ->Int {
    
    var acilarToplamı = (kenar - 2) * 180
    return acilarToplamı
}

var aci = aciToplamı(kenarSayisi: 4)

print(aci)


// Ödev - 6

/* Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri
 geri döndüren metod*/

func maasHesapla (gunSayisi gun:Int) -> Int {
    
    let calismaSaati = gun * 8
    var maas = 0
    
    if calismaSaati > 160 {
        let mesaiFazlasi = calismaSaati - 160
        maas = 160*10 + mesaiFazlasi*20
    }else{
        maas = calismaSaati*10
        
    }
    return maas
}

var maas = maasHesapla(gunSayisi: 7)

print(maas)


// Ödev - 7


/*Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren metod*/


func ucretHesapla (kota:Int, harcama:Int) -> Int {
    
    var ucret = 100
    
    if harcama <= kota  {
        return ucret
    }
    
    var asım = harcama - kota
    
    ucret += asım * 4
    return ucret
}

var harcama = ucretHesapla(kota: 50, harcama: 65)

print(harcama)
 
 





