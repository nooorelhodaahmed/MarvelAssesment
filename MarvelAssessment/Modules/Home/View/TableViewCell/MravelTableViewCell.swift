//
//  MravelTableViewCell.swift
//  MarvelAssessment
//
//  Created by norelhoda on 25/02/2024.
//

import UIKit

class MravelTableViewCell: UITableViewCell {

    @IBOutlet weak var  marvelImage : UIImageView!
    @IBOutlet weak var marvelName : UILabel!
    @IBOutlet weak var selectionButton : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
