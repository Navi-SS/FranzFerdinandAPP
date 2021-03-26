//
//  CustomTableViewCell.swift
//  FranzFerdinandAPP
//
//  Created by Feric on 15/03/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var discNameLabel: UILabel!
    @IBOutlet weak var discImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
