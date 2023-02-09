import UIKit


for i in 1...5 {            // eğer "i" değişkeni kullanılmayacaksa "_" işareti de konulabilir
    print("Merhaba \(i)")
}

print("****************")

for i in stride(from: 0, through: 20, by: 5){
    print("Merhaba \(i)")
}

print("****************")

for i in stride(from: 20, through: 0, by: -2) {   // 2' şer azaltarak saydırma

    print("Merhaba \(i)")
}

print("****************")


var sayac = 0

while sayac < 10 {
    
    print(sayac)
    sayac += 1
    
}

var isim: String = "Berkay"

var harfSayisi: Int = isim.count

for i in 1...harfSayisi {
    
    print("\(i). \(isim)")
    
}





















