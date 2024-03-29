//
//  ViewController.swift
//  Coklu Table View
//
//  Created by Berkay DEMİR on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewSehirler: UITableView!
    @IBOutlet weak var tableViewUlkeler: UITableView!
    
    var ulkeler:[String] = [String]()
    var sehirler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Türkiye","Almanya","İtalya","Fransa","Rusya","İngiltere"]
        sehirler = ["Ordu","Amasya","Kırıkkale","Yozgat","Tunceli","Ankara"]
        
        tableViewUlkeler.delegate = self
        tableViewUlkeler.dataSource = self
        
        tableViewSehirler.delegate = self
        tableViewSehirler.dataSource = self
    }
    
    
}


extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var veriSayisi:Int?
        if tableView == tableViewUlkeler {
            veriSayisi = ulkeler.count
        }
        if tableView == tableViewSehirler{
            veriSayisi = sehirler.count
        }
        return veriSayisi!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell?
        if tableView == tableViewUlkeler{
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
            cell?.textLabel?.text = ulkeler[indexPath.row]
        }
        if tableView == tableViewSehirler{
            cell = tableView.dequeueReusableCell(withIdentifier: "sehirlerHucre", for: indexPath)
            cell?.textLabel?.text = sehirler[indexPath.row]
        }
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == tableViewUlkeler {
            print("Seçilen Ülke: \(ulkeler[indexPath.row])")
        }
        if tableView == tableViewSehirler {
            print("Seçilen Şehir: \(sehirler[indexPath.row])")
        }
    }
    
}


