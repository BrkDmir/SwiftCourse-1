import UIKit

// Sınıfın adıyla değişkene erişmemizi sağlar nesene türetmemiz gerekmez
// Performansı olumsuz etkiler


class Aclass {
    
    static var x = 10
    static func metod() {
        
        print("Merhaba")
    }
}

print(Aclass.x)

Aclass.metod()
