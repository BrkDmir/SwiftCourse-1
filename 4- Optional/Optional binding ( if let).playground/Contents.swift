import UIKit

var str: String?

str = "Merhaba"

/* if let yapısıyla "!" kulanmadan unwrapping işlemini
otomatik bir şekilde gerçekleştiriyoruz.
Buna optional binding işlemi denir. */


if let temp = str {  // burada let yerine var da kullanılabilir.
    print(temp)
}else{
    print("str nil değer içeriyor")
}

/* Daha önce de yaptığımız gibi metinsel ifadeleri sayısal ifadelere dönüştürürken
yani tip dönüşümü yaparken de if let yapısını kullanırız.
*/

var yazi: String = "Berkay"

if let sayi = Int(yazi) {
    print(sayi)
}else {
    print("String ifade nümerik karakterler dışında karakterler de içermektedir")
}










