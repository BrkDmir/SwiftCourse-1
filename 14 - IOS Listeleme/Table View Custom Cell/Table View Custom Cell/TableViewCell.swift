//
//  TableViewCell.swift
//  Table View Custom Cell
//
//  Created by Berkay DEMİR on 29.08.2023.
//

import UIKit

protocol TableViewCellProtocol {
    func hucredekiButonTiklandi(indexPath:IndexPath)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol:TableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func butonTikla(_ sender: Any) {
        hucreProtocol?.hucredekiButonTiklandi(indexPath: indexPath!)
    }
}
