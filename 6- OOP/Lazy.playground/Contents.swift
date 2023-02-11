import UIKit

class Ornek {
    
    lazy var no = 39 /* Depolamada ikinci plana atılamasını istediğimiz
                      değişkenleri tanımlarken "lazy" keyword ünü kullanırız
                      bu keyword belirttiği değişkenin depolamada sorun yaanması halinde
                      gözden ilk çıkarılacak olan değişkenlerden olduğunu belirtir*/
}

var nesne = Ornek()
print(nesne.no)
