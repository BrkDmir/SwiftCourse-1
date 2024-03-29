//
//  ViewController.swift
//  Cok Bolumlu Table View
//
//  Created by Berkay DEMİR on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    var bolumler = ["Meyveler","Renkler","Mevsimler"]
    var bolumVerileri = [["Elma","Muz","Çilek"],["Kırmızı","Siyah","Gri","Mavi"],["Yaz","Kış"]]
    
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bolumler.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bolumVerileri[section].count
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return bolumler[section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreAdi", for:indexPath)
        cell.textLabel?.text = bolumVerileri[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(bolumler[indexPath.section]) bölümünde \(bolumVerileri[indexPath.section][indexPath.row]) seçildi ")
    }
}











