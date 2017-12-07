//
//  CustomTableViewCell.swift
//  pubgWiki
//
//  Created by Ryusei Tashiro on 2017/12/07.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var weaponImage: UIImageView!
    @IBOutlet weak var weaponTitle: UILabel!
    @IBOutlet weak var weaponLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(imageName: String, titleText: String, descriptionText: String) {
        weaponImage.image = UIImage(named: imageName)
        weaponTitle.text = titleText
        weaponLabel.text = descriptionText
    }

}
