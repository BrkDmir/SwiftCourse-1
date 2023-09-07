//
//  ViewController.swift
//  Bildirim Olusturma
//
//  Created by Berkay DEMİR on 7.09.2023.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    var izinKontrol:Bool = false

    override func viewDidLoad() {
        
        super.viewDidLoad()
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: {(granted,error) in
            self.izinKontrol = granted
            if granted {
                print("İzin alma işlemi başarılı")
            }else{
                print("İzin alma işlemi başarısız")
            }
        })
        
        
    }


    @IBAction func bildirimOlustur(_ sender: Any) {
        
        if izinKontrol{
            
            let evet = UNNotificationAction(identifier:"evet",title:"Evet",options:.foreground)
            let hayir = UNNotificationAction(identifier:"hayir",title:"Hayır",options:.foreground)
            let sil = UNNotificationAction(identifier:"sil",title:"Sil",options:.destructive)
            let kategori = UNNotificationCategory(identifier: "kat", actions: [evet,hayir,sil], intentIdentifiers: [], options:[])
            UNUserNotificationCenter.current().setNotificationCategories([kategori])
            
            
            let icerik = UNMutableNotificationContent()
            icerik.title = "Başlık"
            icerik.subtitle = "AltBaşlık"
            icerik.body = "5 , 4'ten büyük müdür?"
            icerik.badge  = 1
            icerik.sound = UNNotificationSound.default
            icerik.categoryIdentifier = "kat"
            
            var date = DateComponents()
            date.minute = 10
            date.hour = 8
            
           // let tetiklemeTekrarli = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
            
           let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
            
            let istek = UNNotificationRequest(identifier: "Bildirim Olusturma", content: icerik, trigger: tetikleme)
            UNUserNotificationCenter.current().add(istek,withCompletionHandler: nil)
            
        }else{
            
            
            
        }
        
    }
}
extension ViewController:UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner,.sound,.badge])
    
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.actionIdentifier=="evet"
        {print("Doğru Cevap")}
        if response.actionIdentifier=="hayir"
        {print("Yanlış Cevap")}
        if response.actionIdentifier=="sil"
        {print("Cevap Verilmedi")}
        completionHandler()
    }
}
