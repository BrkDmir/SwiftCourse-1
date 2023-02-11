import UIKit

// Birden fazla parametre kullanılacağı zaman en sona yazılmalıdır.

func toplamVariadic(sayilar:Int...) -> Int {
    
    var toplam = 0
    for i in sayilar{
        toplam += i
    }
    return toplam
    
}

var v1 = toplamVariadic(sayilar: 1,2,3,4,5)
print(v1)

var v2 = toplamVariadic(sayilar: 34,56,23,353,7657,21)
print(v2)
