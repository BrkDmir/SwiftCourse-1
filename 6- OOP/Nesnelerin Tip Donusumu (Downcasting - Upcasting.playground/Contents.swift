import UIKit

/* Arasında kalıtım ilişkisi olan classlarda sub class
 nesnesini super class a dönüştürmek upcasting,
 super class nesnesini sub class a dönüştürmek downcastingtir.*/


/*  is:  Tip kontrolü için kullanılır (Type checking)
    as:  Bir tipi başka bir tipe dönüştürmek için kullanılır (Upcasting)
    as!: Bir tipi başka bir tipe dönüştürmek için kullanılır.
 Dönüşüm başarısız olursa hata, başarılı olursa değeri döndürür. (Force Downcasting)
    as?: Dönüşüm sırasında optional bir veri geliyorsa; dönüşüm başarısızsa nil,
 başarılıysa değeri döndürür. ( Optional Downcasting)*/



class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev {
    var kuleSayisi:Int?
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        
        super.init(pencereSayisi: pencereSayisi)
    }
    
    
}

class Villa: Ev{
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var saray = Saray(kuleSayisi: 2, pencereSayisi: 5)

if saray is Saray {
    print("Saraydır")
}else{
    print("Saray değildir")
}

// Upcasting

var ev1:Ev = Saray(kuleSayisi: 2, pencereSayisi: 10) as Ev

// Downcasting

var ev2 = Ev(pencereSayisi: 40)
var saray2 : Saray = ev2 as! Saray

var saray3:Saray? = Ev(pencereSayisi: 5) as? Saray  // Burada "Saray?" İfadesindeki "?" konmalıdır

// NOT "??" İfadesi sağında belirklenen default değeri eğer işlme başarısız olursa değişkene atar

