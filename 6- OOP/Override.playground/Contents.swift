import UIKit

class Hayvan {
    func sesCikar(){
        print("Sesim Yok")
    }
}

class Memeli: Hayvan {

}
class Kedi:Memeli {
    override func sesCikar() {
        print("Miyav")
    }
}
class Kopek: Memeli {
    override func sesCikar() {
        print("Hav")
    }
}



var h = Hayvan()
h.sesCikar()

var m = Memeli()
m.sesCikar()

var kedi = Kedi()
kedi.sesCikar()

var kopek = Kopek()
kopek.sesCikar()
