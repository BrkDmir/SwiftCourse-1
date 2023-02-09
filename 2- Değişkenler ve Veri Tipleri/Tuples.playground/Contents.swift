import UIKit

// Veri Okuma

var kisi = ("Berkay","DEMİR")
var ad: String = kisi.0
var soyad: String = kisi.1

print(ad)
print(soyad)

var nokta = (x:10,y:20)

print(nokta.x,nokta.y)

// Veri Atama

kisi.0 = "Ahmet"
kisi.1 = "Mehmet"

nokta.x = 25
nokta.y = 50

var xEkseni: Int = nokta.x
var yEkseni: Int = nokta.y

print(ad)
print(soyad)
print(xEkseni,yEkseni)

var hataMesaji = (404,"Not Found")

var (kod,mesaj) = hataMesaji

print(kod,mesaj)

// İç içe tuple

var ogrenci: (Int,(Bool,String)) = (1256,(true,"Berkay"))

print(ogrenci.0 , ogrenci.1.0 , ogrenci.1.1)





