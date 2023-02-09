import UIKit

// Sayısaldan sayısala dönüşüm

var i: Int = 42
var d: Double = 42.45
var f: Float = 42.89

var sonuc1: Int = Int(d) // double ı integere a dönüştürdük.
var sonuc2: Double = Double(i)
var sonuc3: Float = Float(d)

print(sonuc1)
print(sonuc2)
print(sonuc3)

// Sayısaldan metine dönüşüm

var str1: String = String(i)
var str2: String = String(d)
var str3: String = String(f)

print(str1)
print(str2)
print(str3)

// Metinden Sayısala

var yazi1: String = "34"


if let sayi1 = Int(yazi1) {
    print(sayi1)
}

var yazi2 : String = "abc34.56"

if let sayi2 = Double(yazi2){
    print(sayi2)
}







