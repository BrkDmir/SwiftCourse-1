import UIKit

var yas : Int = 17
var isim : String = "Berkay"

// Örn-1

if yas >= 18
{
    print("Reşitsiniz")
}

else
{
    print("Reşt değilsiniz")
}

// Örn-2

if isim == "Berkay" {
    print("Merhaba Berkay")
}else{
    print("Tanınmayan Kişi")
}

// Örn-3 : Else if

if isim == "Berkay" {
    print("Merhaba Berkay")
}else if isim == "DEMİR"{ print("Merhaba DEMİR")
    
}else{
    print("Tanınmayan kişi")
}

// Örn-4 : Çoklu şart

var kullaniciAdi : String = "El Furia"
var kullaniciSifre : Int = 1234

if kullaniciSifre == 1234 && kullaniciAdi == "El Furia" {
    print("Hoşgeldiniz \(kullaniciAdi)")
}else{
    print("Hatalı giriş")
}

//*********

var sinif : Int = 10

if sinif == 10 || sinif == 11 || sinif == 12 {
    
    print("Üni sınavına hazırlanmalısın")
    
}

// örn-5 Ternary Conditional

var a = 10
var b = 20

a == b ? print("Doğru") : print("Yanlış")


// ÖRN Alan hesabı

print ("Çember çevresi (1)")
print("Çember alanı (2)")

let pi = 3
var yariCap = 5
var secim  = 1
var sonuc = 0

if secim == 1{
     sonuc = 2 * pi*yariCap
}else if secim == 2 {
     sonuc = pi*yariCap*yariCap
    
}
print(sonuc)



















