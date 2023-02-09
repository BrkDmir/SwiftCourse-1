import UIKit


// İndeksleme yoktur ve içerisindeki veriler unique tir.

var set1 = Set <Int>()

var set2:Set = [1, 2, 3]

var set3 : Set <String> = ["Berkay"]

set3.insert("Ahmet")
set3.insert("Veli")

set3.isEmpty
set3.count
set3.first // Karışık olduğundan last yok
set3.contains("Ali")
set3.max()
set3.min()

// Set yapısına özgü bazı metodlar

let tekler: Set = [1,3,5,7,9]
let ciftler: Set = [0,2,4,6,8]
let asal: Set = [2,3,5,7]


// Birleştirme (union)

let dizi = tekler.union(ciftler)

// Kesişim (intersection)

let dizi2 = tekler.intersection(ciftler)

// Bir setin diğerinden farkı (subtraction)

let dizi3 = tekler.subtracting((asal))

// Setlerin kesişimlerinin değili

let dizi4 = tekler.symmetricDifference(asal)

