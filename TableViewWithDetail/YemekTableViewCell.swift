//
//  YemekTableViewCell.swift
//  TableViewWithDetail
//
//  Created by Berkan Korkmaz on 5.09.2022.
//

import UIKit

protocol YemekTableViewCellProtocol {
    func sipVer(indexPath: IndexPath)
}

class YemekTableViewCell: UITableViewCell {

    @IBOutlet weak var yemekFiyatLabel: UILabel!
    @IBOutlet weak var yemekAdıLabel: UILabel!
    @IBOutlet weak var yemekImageView: UIImageView!
    
    var hucreProtokol: YemekTableViewCellProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func sipVerButton(_ sender: Any) {
        hucreProtokol?.sipVer(indexPath: indexPath!)
    }
    
}
