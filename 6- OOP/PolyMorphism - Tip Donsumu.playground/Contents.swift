import UIKit

class Personel {
    func iseAlindi(){
        print("Personel Mutlu")
    }
}
class Mudur:Personel {
    func iseAl(p:Personel){
        
    }
    func terfiEttir(p: Personel){
        if p is Ogretmen {
            
            (p as! Ogretmen).maasArttir()
            
        } else{print("İşçi terfi alamaz")}
    }
}
class Isci:Personel {
    
}
class Ogretmen:Personel{
    func maasArttir(){
        print("Maaş arttı")
    }
}

var ogretmen:Personel = Ogretmen()
var isci:Personel = Isci()

var mudur = Mudur()
mudur.iseAl(p: isci)
mudur.iseAl(p: ogretmen)
mudur.terfiEttir(p: ogretmen)
mudur.terfiEttir(p: isci)


























