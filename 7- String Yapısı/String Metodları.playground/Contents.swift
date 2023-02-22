import UIKit

var str = "Merhaba"



if str.contains("er") // içinde "er" var mı
{
    print("True")
}else{print("False")}

str.insert("W", at: str.index(str.startIndex,offsetBy: 4)) // 4. indexe w ekler
print(str)

str.remove(at: str.index(str.startIndex,offsetBy: 4)) // 4. indexten w siler
print(str)

// Ornek

// reverse metoduyla kolayca bir kelimeyi tersten yazdırabiliriz ama biz yukarıdaki metodlarla yapıcaz

var str1 = "Merhaba"

var harfler = [Character]()

for harf in str {
    print(harf)
    harfler.append(harf)
}
print(harfler)

for i in stride(from: (harfler.count-1), through: 0, by: -1){
    
    print(harfler[i],terminator: "-")
    
}
