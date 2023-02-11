import UIKit

func islem(sayilar:[Int]) -> (toplam:Int,carpım:Int){
    var toplam = 0
    var carpım = 1
    
    for i in sayilar{
        toplam = toplam + i
        carpım = carpım * i
    }
    
    return (toplam, carpım)
    
    
}


var dizi = [1,2,3,4,5]

let b = islem(sayilar: dizi)

print(b.toplam)
print(b.carpım)
