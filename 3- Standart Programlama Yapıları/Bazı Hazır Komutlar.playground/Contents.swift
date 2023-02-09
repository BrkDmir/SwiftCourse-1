import UIKit

// Rastgele sayı üretme

for _ in 1...10{
    let rnd = Int(arc4random_uniform(10))
    print("Üretilen sayı: \(rnd)")
}

// Matematiksel işlemler

let c = ceil(6.5)
print(c)

let f = floor(6.5)
print(f)

let s = sqrt(4.0)
print(s)

let p = pow(2.0, 3.0)
print(p)

let a = abs(-10)
print(a)

let mx = max(100,200)
print(mx)

let mn = min(100,200)
print(mn)


// Tarihsel işlemler

let tarih = Date()

let takvim = Calendar.current

let yil = takvim.component(.year, from: tarih)

let ay = takvim.component(.month, from: tarih)

let gun = takvim.component(.day, from: tarih)

let saat = takvim.component(.hour, from: tarih)

let dakika = takvim.component(.minute, from: tarih)

let saniye = takvim.component(.second, from: tarih)

print(yil)
print(ay)
print(gun)
print(saat)
print(dakika)
print(saniye)

// Ölçü Birimleri

let metre = Measurement.init(value: 50, unit: UnitLength.meters)

let kilometre = Measurement.init(value: 1, unit: UnitLength.kilometers)

let sonuc = metre + kilometre

print(metre)
print(kilometre)
print(sonuc)

let a1 = sonuc.converted(to: .kilometers)

let a2 = sonuc.converted(to: .miles)

print(a1)
print(a2)

let frekans = Measurement.init(value: 1000, unit: UnitFrequency.kilohertz)

let c1 = frekans.converted(to: .gigahertz)

print(frekans)
print(c1)


let sicaklik = Measurement.init(value: 30, unit: UnitTemperature.celsius)

let d1 = sicaklik.converted(to: .fahrenheit)

print(sicaklik)
print(d1)
























