import UIKit

class Math {
    
    var x = 10
    var y = 20
    
    var topla:Int {
        
        get{
            return x+y
        }
        
    }
    
}

var nesne = Math()
print(nesne.topla)


class Maas {
    
    var maas:Double = 10000.0
    var bonus:Double = 1.10
    
    var maasHesapla:Double {
        
        get{
            return (maas*bonus) / 52
        }
        set (yeniMaas) {
            self.maas = yeniMaas * 52
        }
    }
}

var m = Maas()

print(m.maasHesapla)

// "=" koayarak set özelliğini kullanıyoruz

m.maasHesapla = 600

print(m.maas)
