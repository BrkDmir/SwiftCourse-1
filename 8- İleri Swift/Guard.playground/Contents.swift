import UIKit

func kisiTanima(ad:String){
    
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
        
    }else { print("Tanınmayan kişi")
        
    }
}

kisiTanima(ad: "Ahmet")


func kisitanima1(ad:String){
    
    guard ad == "Ahmet" else {
        
        print("Tanınmayan kişi")
        return
    }
    print("Merhaba Ahmet")
}

kisitanima1(ad: "Ahmet")


func buyukHarfYap(str:String?){
    
    if let temp = str {
        
        print(temp.uppercased())
        
    }else{
        print("Str nildir")
        return
    }
    
}
buyukHarfYap(str: nil)


func buyukHarfYap1(str:String?) {
    
    guard let temp = str, temp.count > 0 else{
        print("Str nildir")
        return
    }
    print(temp.uppercased())
}
buyukHarfYap1(str: nil)
