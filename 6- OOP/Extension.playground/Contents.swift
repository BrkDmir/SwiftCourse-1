import UIKit

extension Double {
    
    var km: Double { return self * 1000.0}
    var m: Double {return self}
    var cm: Double { return self / 100.0}
    var mm: Double { return self / 1000.0}
    
}


var deger: Double = 10.km
var deger2: Double = 10.m
var deger3: Double = 10.cm
var deger4: Double = 10.mm
print(deger)
print(deger2)
print(deger3)
print(deger4)

print(250000.cm)

// Ornek

extension String {
    func yerDegistir(yeniHarf: String, eskiHarf: String) -> String {
        return self.replacingOccurrences(of: yeniHarf, with: eskiHarf)
    }
}

let str = "ankara".yerDegistir(yeniHarf: "a", eskiHarf: "e")
print(str)
