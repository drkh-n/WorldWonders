//
//  WonderTableViewCell.swift
//  WorldWonders
//
//  Created by Darkhan on 29.03.2021.
//

import UIKit
import SDWebImage

class WonderTableViewCell: UITableViewCell {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabelView: UILabel!
    @IBOutlet weak var regionLabelView: UILabel!
    @IBOutlet weak var locationLabelView: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupData(wonder: Wonder) {
        nameLabelView.text = wonder.name
        regionLabelView.text = wonder.region
        locationLabelView.text = wonder.location
        
        pictureImageView.sd_setImage(with: URL(string: wonder.picture), placeholderImage: nil)
        flagImageView.sd_setImage(with: URL(string: wonder.flag), placeholderImage: nil)
    }

}
