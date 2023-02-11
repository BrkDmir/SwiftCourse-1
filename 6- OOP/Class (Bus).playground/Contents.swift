import UIKit

class Bus{
    
    var kapasite:Int?
    var nereden:String?
    var nereye:String?
    var mevcutYolcu:Int?
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
    }
    func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
    }
    func info(){
        print("Kapasite: \(kapasite!)")
        print("Nerden: \(nereden!)")
        print("Nereye: \(nereye!)")
        print("Mevcut Yolcu Sayısı: \(mevcutYolcu!)")
        
    }
    
    
}

var luksArtvin = Bus()

luksArtvin.kapasite = 50
luksArtvin.nereden = "Ankara"
luksArtvin.nereye = "İstanbul"
luksArtvin.mevcutYolcu = 35
luksArtvin.info()

luksArtvin.yolcuAl(yolcu: 10)
luksArtvin.info()

luksArtvin.yolcuIndir(yolcu: 5)
luksArtvin.info()







