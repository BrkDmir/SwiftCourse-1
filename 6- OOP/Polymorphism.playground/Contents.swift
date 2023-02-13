import UIKit

class Hayvan {
    func sesCikar() {
        print("Sesim Yok")
    }
}

class Kopek: Hayvan {
    override func sesCikar() {
        
        print("Hav")
    }
    
}

var hayvan: Hayvan = Kopek() // Hayvan sınıfına ait gibi görünen ama sub classın özelliklerini taşıyan nesne türettik

hayvan.sesCikar()




