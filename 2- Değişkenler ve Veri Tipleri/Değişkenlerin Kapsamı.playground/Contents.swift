import UIKit


// Burada tanımladığımız x ve y değişkenleri global değişkenlerdir.
//Daha iyi anlaşılması için bir class yapısı oluşturalım.


    var x = 10
    var y = 10// GLOBAL



    func topla(){
        x = x + y  // LOCAL
        print(x)
        
    }
    
   

// ÖNEMLİ NOT: Local Her Zaman Globale Baskındır!!!!
topla()

print(x)

 



