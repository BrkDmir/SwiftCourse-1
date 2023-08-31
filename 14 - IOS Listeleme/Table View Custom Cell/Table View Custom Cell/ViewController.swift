//
//  ViewController.swift
//  Table View Custom Cell
//
//  Created by Berkay DEMİR on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe:[Kisiler] = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        
        let kisi1 = Kisiler(kisiId: 1, kisiAd: "Berkay", kisiTel: "555")
        let kisi2 = Kisiler(kisiId: 2, kisiAd: "Selehaddin", kisiTel: "553")
        let kisi3 = Kisiler(kisiId: 3, kisiAd: "Mert", kisiTel: "505")
        let kisi4 = Kisiler(kisiId: 4, kisiAd: "Emin", kisiTel: "533")
        let kisi5 = Kisiler(kisiId: 5, kisiAd: "İsmail", kisiTel: "566")
        
        kisilerListe.append(kisi1)
        kisilerListe.append(kisi2)
        kisilerListe.append(kisi3)
        kisilerListe.append(kisi4)
        kisilerListe.append(kisi5)
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource,TableViewCellProtocol{
    func hucredekiButonTiklandi(indexPath: IndexPath) {
        print("\(kisilerListe[indexPath.row].kisiId!). Button Tıklandı")
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerCell", for: indexPath) as! TableViewCell
        cell.kisiAdLabel.text = "\(gelenKisi.kisiId!) - \(gelenKisi.kisiAd!)"
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gelenKisi = kisilerListe[indexPath.row]
        print("ID: \(gelenKisi.kisiId!)")
    }
}
