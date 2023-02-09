import UIKit


// Dizi oluşturma

var dizi1 = [Int]()
var dizi2:[Float] = [10.0,20.0,30.0]
var dizi3 = [Int](repeating: 0, count: 3) // [0,0,0]

var meyveler: [String] = ["Çilek", "Muz", "Elma", "Kivi", "Kiraz"]

// Dizi elemanlarını döngüyle yazdırma

for i in meyveler {
    print(i)
}

print("**********")

for (index, meyve) in meyveler.enumerated() {
    print("İndeks: \(index) Eleman: \(meyve)")
}

// Veri ekleme

meyveler.append("Karpuz")
meyveler += ["Mandalina"]

// Veri değiştirme

meyveler[2] = "Ananas"


// Eleman seçme

var str = meyveler[3]

print(str)

// Araya veri ekleme

meyveler.insert("Portakal", at: 3 ) // 3. indekse portakal'ı yerleştirdi

// Dizinin dolu olup olmadığını kontrol etme

meyveler.isEmpty

// Eleman sayısını bulma

meyveler.count

// İlk elemanı bulma

meyveler.first

// Son elemanı bulma

meyveler.last

// Dizinin içerisinde bir elemanın olup olmadığını kontrol etme

meyveler.contains("Kavun") // false döner


// max - min elemanları bulma

meyveler.max()
meyveler.min()


// Diziyi ters çevirme


meyveler.reverse()


// Diziyi sıralar

meyveler.sort()


// Veri silme

meyveler.remove(at: 2)

// Hepsini silme

meyveler.removeAll()


// ********* FİLTRELEME İŞLEMLERİ *********


var sayilar = [1,2,3,4,5,6,7,8,9,10]


var sonuc1 = sayilar.filter({$0>7}) // 7 den büyük olanları sonu1 in içine dizi olarak aktarır yani sonuc1 dizi olur

var sonuc2 = sayilar.filter({$0<7}) // 7 den küçük olanları sonuc2 ye atar sonuc2 dizidir

var sonuc3 = sayilar.filter({$0>3 && $0<7}) // 3 ile 7 arasındaki verileri dizi olarak sonuc3 e atar













