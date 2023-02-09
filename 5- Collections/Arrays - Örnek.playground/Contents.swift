import UIKit


// Dizi içerisindeki verilerin ortalamasını bulma


var sayilar = [30, 40, 70, 100, 50, 80, 90, 50, 70, 40]

var toplam = 0
var ortalama = 0

for i in sayilar {
    toplam += i
    ortalama = toplam / sayilar.count
}
print("Toplam: \(toplam), Ortalama: \(ortalama)")


// Dizi içeriğini değiştirme örneği


var numbers = [1, 2, 3, 4, 5]

var carpim = 1

for (indeks, sayi) in numbers.enumerated() {
    carpim = sayi * 2
    numbers[indeks] = carpim
}

print(numbers[2])


// Tek çift sayı bulma örneği

var num = [1, 4, 67, 42, 89, 90, 54, 12, 65, 73, 64, 87]

var ciftler = [Int]()
var tekler = [Int]()

for i in num {
    if i % 2 == 0{
        ciftler.append(i)
    }else{
        tekler.append(i)
    }
    
}


// Rastgele sayı üretip diziye ekleme örneği

var num2 = [Int]()

for _ in 1...10 {
    let rnd = Int(arc4random_uniform(10))
    num2.append(Int(rnd)) // Yukarıdaki random kodu UInt32 üretmekte Int e çevirdik
}


// Karne uygulaması

var notlar = [Int]()

var dersler = [String]()


dersler.append("Tarih")
notlar.append(20)

dersler.append("Fizik")
notlar.append(80)

dersler.append("Matematik")
notlar.append(100)

dersler.append("Biyoloji")
notlar.append(40)

var sum = 0

for i in 0...(notlar.count-1) {
    print("\(dersler[i]) : \(notlar[i])")
    sum += notlar[i]
}

print("******************")

print("Ortalama: \(sum/notlar.count)")


// İsim arama örneği

var names = ["Ahmet", "Mehmet", "Berkay", "Serhat", "Kadir",]
var controlName = "Berkay"

for i in names {
    if i == controlName {
        print("Bu isim dizide mevcut")
        break
    }
}





