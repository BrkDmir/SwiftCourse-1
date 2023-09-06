//
//  ViewController.swift
//  Core Data giris
//
//  Created by Berkay DEMİR on 2.09.2023.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    var kisilerListe:[Kisiler] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        veriKaydi()
        veriOkuma()
        veriGuncelle()
        veriOkuma()
        veriOkumaSiralama()
        veriOkumaFiltreleme()
        
    }
    func veriKaydi(){
        
        let kisi = Kisiler(context:context)
        kisi.kisi_ad = "Berkay"
        kisi.kisi_yas = 22
        
        appDelegate.saveContext()
        
    }
    func veriOkuma(){
        
        do {
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
        } catch  {
            print("Veri okunurken hata oluştu")
        }
        for i in kisilerListe{
            print("Ad: \(i.kisi_ad!) - Yaş: \(i.kisi_yas)")
        }
    }
    func veriSil(){
        
        let kisi = kisilerListe[0]
        
        context.delete(kisi)
        appDelegate.saveContext()
        
    }
    func veriGuncelle(){
        let kisi = kisilerListe[0]
        kisi.kisi_ad = "Yeni Berkay"
        kisi.kisi_yas = 30
        appDelegate.saveContext()
    }
    func veriOkumaSiralama(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas),ascending: true)
        fetchRequest.sortDescriptors = [sort]
        
        do {
            kisilerListe = try context.fetch(fetchRequest)
        } catch  {
            print("Veri okunurken hata oluştu")
        }
        for i in kisilerListe{
            print("Ad: \(i.kisi_ad!) - Yaş: \(i.kisi_yas)")
        }
    }
    func veriOkumaFiltreleme(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 22)
        do {
            kisilerListe = try context.fetch(fetchRequest)
        } catch  {
            print("Veri okunurken hata oluştu")
        }
        for i in kisilerListe{
            print("Ad: \(i.kisi_ad!) - Yaş: \(i.kisi_yas)")
        }
        
    }
    
    
    
}

