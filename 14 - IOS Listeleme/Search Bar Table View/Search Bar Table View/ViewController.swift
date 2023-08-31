//
//  ViewController.swift
//  Search Bar Table View
//
//  Created by Berkay DEMİR on 31.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var ulkeler: [String] = []
    var aramaSonucuUlkeler: [String] = []
    var aramaYapiliyorMu: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler=["Türkiye","Almanya","Japonya","İtalya","Hollanda","İspanya","Belçika","İsveç","Finlandiya","Avustralya","ABD","Kanada","Rusya","Çin","Fransa","Yunanistan"]
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if aramaYapiliyorMu {
            
            return aramaSonucuUlkeler.count
            
        }else{
            
            return ulkeler.count
            
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
        
        if aramaYapiliyorMu {
            
            cell.textLabel?.text = aramaSonucuUlkeler[indexPath.row]
            
        }else{
            
            cell.textLabel?.text = ulkeler[indexPath.row]
            
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if aramaYapiliyorMu {
            print("Seçilen Ülke: \(aramaSonucuUlkeler[indexPath.row])")
            
        }else{
            print("Seçilen Ülke: \(ulkeler[indexPath.row])")
        }
        
       
    }
}
extension ViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        print("Arama sonucu: \(searchText)")
        
        if searchText == ""{
            aramaYapiliyorMu = false

        }else{
            aramaYapiliyorMu = true
            aramaSonucuUlkeler = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})

        }
        
        tableView.reloadData()
        
    }
    
    
}

