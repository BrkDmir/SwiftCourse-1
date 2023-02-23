import UIKit


let queue = DispatchQueue(label: "Etiket",qos: DispatchQoS.userInitiated) // öncelikleri farklı olan 2 farklı thread tanımlıyoruz
let queue2 = DispatchQueue(label: "Etiket-2",qos: DispatchQoS.background)  // Main thread her zaman önceliklidir


queue.sync {  // Bu metod async şeklinde oluşturulursa race condition olur
    
    for i in 100...110{
        // print("Thread: \(i)")
    }

}

for i in 100...110{
    // print("Main: \(i)")
}


// **********


queue.async {
    
    for i in 100...110{
        print("Thread-1: \(i)")
    }

}
queue2.async {
    
    for i in 100...110{
        print("Thread-2: \(i)")
    }

}

// Threadlerde gecikme ayarlama

let queue3 = DispatchQueue(label: "Etiket-3",qos: DispatchQoS.userInitiated)

var gecikmeSaniye : DispatchTimeInterval = .seconds(2) // 2 saniyelik gecikme
print(Date())

queue3.asyncAfter(deadline: .now()+gecikmeSaniye){
    print(Date())
}

