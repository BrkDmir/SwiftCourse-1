import UIKit


let ifade = {
    
    print("Closure Konusu")
    
}

ifade()

let toplama = {
    
    (sayi1:Int,sayi2:Int) -> Int in // keyword
    return sayi1 + sayi2
}
let sonuc = toplama(10,20)
print(sonuc)

var sayilar:[Int] = [10,5,75,89,23,12,99,66,52]

let siralama1 = sayilar.sorted(by:{sayi1, sayi2 in sayi1 > sayi2 })
let siralama2 = sayilar.sorted(by: {n1,n2 in n1 < n2})
let siralama3 = sayilar.sorted(by: {$0 > $1}) // siralama1 ile aynıdır  "$" işareti sayi1 ve sayi2 yerine kullanılır
let siralama4 = sayilar.sorted(by:  < ) // Kısa yazım
print(siralama1)
print(siralama2)
print(siralama3)
print(siralama4)



