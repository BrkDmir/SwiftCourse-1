//
//  YemekTableViewCell.swift
//  Detayli Table View Kullanimi
//
//  Created by Berkay DEMİR on 31.08.2023.
//

import UIKit

protocol YemekTableViewCellProtocol{
    
    func siparisVer(indexPath:IndexPath)
}

class YemekTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yemekResimImageView: UIImageView!
    @IBOutlet weak var labelYemekAdi: UILabel!
    @IBOutlet weak var labelYemekFiyat: UILabel!
    
    var hucreProtocol: YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    @IBAction func siparisVerButton(_ sender: Any) {
        
        hucreProtocol?.siparisVer(indexPath: indexPath!)
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
    

}
