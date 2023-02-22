import UIKit

let stringA = "Merhaba"
let stringB = String("Merhaba")


// Boş kontrolü

var str1 = "" // nil


if str1.isEmpty{
    print("Boş")
}else {
    print("Dolu")
}

var str2 = String()

if str2.isEmpty{
    print("Boş")
}else {
    print("Dolu")
}


// Veri ekleme  \()

let a = 20
let b = 100

let str3 = "\(a) x \(b) = \(a*b)"

print(str3)


// String birleştirme


let str4 = "Merhaba "
let str5 = "Dünya! "

let sonuc = str4 + str5

print(sonuc)

// Boyut


print(sonuc.count) // Boşluklar da sayılır


// Karşılaştırma

let str6 = "Merhaba"

let str7 = "Merhaba Dünya"

if str6 == str7 {
    print("\(str6) ve \(str7) eşittir")
    
}else {
    
 print("Eşit değildir")
}

// Parçalama

let str8 = "Merhaba"

for harf in str8
{
    print(harf,terminator:"-")
    
}










