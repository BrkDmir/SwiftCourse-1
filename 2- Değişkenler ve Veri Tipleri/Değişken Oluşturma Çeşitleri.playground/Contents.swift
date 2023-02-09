import UIKit

// Örn-1

var sayi = 10

// Örn-2 - Başlangıç değeri atamadan

var numara:Int?  // Burada "?" işareti "optional" anlamındadır.
numara = 20

print(numara!) // Burada başta tanımlarken "?" işareti kullandığımız için "numara" değişkeninin sonuna "!" işareti koymalıyız

// Örn-3 - Tek Satırda birden fazla tsnımlama

var sayi1 = 30, sayi2 = 40, kelime = "Berkay"

print("1.Sayı: \(sayi1),\n2.sayı: \(sayi2)\nve kelime: \(kelime)")

// Örn-4 Değişkenin değerini daha sonra değiştirebiliriz

var fiyat = 12.99

print(fiyat)

fiyat = 15.99

print(fiyat)

// Örn-5 - Değişkenlerle işlem yapıldıktan sonra başka bir değişkene aktarılabilir

var s1 = 10
var s2 = 20
var sonuc = s1 + s2

print(sonuc)



