import UIKit

var dict1 = [Int:String]()

var dict2 = [3.14:"pi",2.71:"e"]

var dict3:[Int:String] = [1:"Bir",2:"İki",3:"Üç"]

var iller = [16:"Bursa",34:"İstanbul",6:"Ankara"]

// Veri ekleme

iller[35] = "İzmir"
iller[10] = "Balıkesir"

print(iller)

// Veri değiştirme

iller[16] = "Yeni Bursa"

// Veri değiştirme işlemini hazır bir metodla da yapabiliriz

iller.updateValue("Yeni İzmir", forKey: 35)

print(iller)

// Döngüyle veri alma

for (key, value) in iller{
    print("Key: \(key), İl: \(value)")
}


iller.removeValue(forKey: 34) // İstanbulu siler
iller.removeAll()  // Hepsini siler

iller.isEmpty
iller.count
iller.first

var ters = iller.reversed()
print(iller)


// İki diziden dictionary oluşturma

var dersler = ["Kimya", "Matematik","Edebiyat"]
var notlar = [70,80,90]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(notlar,dersler))

print(dersNotlari)


// Dictionary parçalama


var urunFiyatlari: [Double:String] = [15.99:"Kitap",59.99:"T-Shirt",239.99:"Saat"]

var fiyatlar = [Double](urunFiyatlari.keys)

var urunler = [String](urunFiyatlari.values)

print(fiyatlar)
print(urunler)



// Dictionary filtreleme


var okul:[Int:String] = [154:"Ahmet",67:"Berkay",871:"Zeynep",45:"Ahmet"]
var sonuc1 = okul.filter(({$0.key > 70})) // Key değeri 70 ten büyük olanları sonuc1 içine dictionary olarak atar

print(sonuc1)

var sonuc2 = okul.filter({$0.value == "Berkay"})

print(sonuc2)


var sonuc3 = okul.filter({$0.value == "Berkay" && $0.key > 70})  // Değeri "Berkay" olan ve anahtar değeri 70 ten büyük olanlar


print(sonuc3)


// Dictionary örnek

var dersNot = [String:Int]()

dersNot["Tarih"] = 50
dersNot["Kimya"] = 75
dersNot["Biyoloji"] = 80
dersNot["Matematik"] = 60
dersNot["Fizik"] = 90


var toplam = 0

for (ders,not) in dersNot{
    print("\(ders) : \(not)")
    toplam += not
    
    
}

print("************")

print("Ortalama: \(toplam / dersNot.keys.count)")
