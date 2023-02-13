import UIKit

class Ogrenci {
    
    var no: Int?
    var ad: String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String){
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}

var o1 = Ogrenci(no: 100, ad: "Ahmet", sinif: "11F")
var o2 = Ogrenci(no: 101, ad: "Mehmet", sinif: "11D")
var o3 = Ogrenci(no: 102, ad: "Can", sinif: "11C")
var o4 = Ogrenci(no: 103, ad: "Ali", sinif: "11B")
var o5 = Ogrenci(no: 104, ad: "Furkan", sinif: "11A")

var ogrenciListesi =  [Ogrenci]()

ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)
ogrenciListesi.append(o4)
ogrenciListesi.append(o5)

for ogrenci in ogrenciListesi {
    
    print("\(ogrenci.ad!) - \(ogrenci.no!) - \(ogrenci.sinif!)")
    
}

// ***** Ornek-1 *****


// Yukarıdaki yapıyı sort edelim

print("***********")

// Hangi değere göre sıralama yapılacağını belirlememiz gerekiyor

let siralama = ogrenciListesi.sorted(by: {$0.no! > $1.no!})

for i in siralama {
    
    print(i.no!)
}


let siralama2 = ogrenciListesi.sorted(by: {$0.ad! < $1.ad!})
 

for j in siralama2 {
    
    print(j.ad!)
}



// ********** ORNEK-2 ***********

print()
print("*-*-*-*-*-*-*-*-*-*-*-*-*-*")
print()

class DersNotlari {
    
    var ders: String?
    var not:Int?
    
    init(ders:String, not:Int){
        self.ders = ders
        self.not = not
        
    }
    
    
    
}


var dn1 = DersNotlari(ders: "Matematik", not: 55)
var dn2 = DersNotlari(ders: "Fizik", not: 75)
var dn3 = DersNotlari(ders: "Kimya", not: 85)
var dn4 = DersNotlari(ders: "Biyoloji", not: 60)
var dn5 = DersNotlari(ders: "Geometri", not: 80)


var dersListesi = [DersNotlari]()

dersListesi.append(dn1)
dersListesi.append(dn2)
dersListesi.append(dn3)
dersListesi.append(dn4)
dersListesi.append(dn5)


var toplam = 0

for dn in dersListesi {
    print("Dersin Adı: \(dn.ders!)")
    print("Ders Notu: \(dn.not!)")
    toplam += dn.not!
    var ortalama = toplam / dersListesi.count
    print("Dersi Ortalaması: \(ortalama)")
    
    if ortalama >= 50 {print("GEÇTİ")
        
    }else{print("KALDI")}
    
   
    
    print()
    print("*-*-*-*-*-*")
    print()
}


