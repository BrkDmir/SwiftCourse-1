import UIKit

 // Özelliklerini aktaran class: superclass
// Başka sınıftan özelliklerini alan class: subclass olarak adlandırılır

// Sadece Class yapısı için geçerlidir
//Bir class yalnız 1 sınıftan kalıtım alır

// Alt sınıf üst sınıfa erişebilir ama üst sınıf alt sınıflara erişemez
// Sub classtan bir nesene türetildiğinden önce super class ın constructorı çalışır ardından sub classın init i çalışır

class Arac {
    var renk:String?
    var vites:String?
    init(renk:String,vites:String){
        self.renk = renk
        self.vites = vites
    }
}

class Araba : Arac {
    var kasaTipi:String?
    init(kasaTipi:String,renk:String,vites:String) {
        self.kasaTipi = kasaTipi
        super.init(renk:renk, vites:vites)
    }
}

class Nissan : Araba {
    var model:String?
    init(model:String,kasaTipi:String,renk:String,vites:String) {
        self.model = model
        super.init(kasaTipi: kasaTipi,renk: renk,vites: vites)
    }
}

var araba = Araba(kasaTipi: "sedan",renk:"kırmızı",vites:"otomatik")
print(araba.kasaTipi!)



// ********** Örnek ***********


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
