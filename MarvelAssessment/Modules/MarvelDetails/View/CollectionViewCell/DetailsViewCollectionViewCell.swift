//
//  DetailsViewCollectionViewCell.swift
//  MarvelAssessment
//
//  Created by norelhoda on 25/02/2024.
//

import UIKit

class DetailsViewCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image : UIImageView!
    @IBOutlet weak var descriptionLabel : UILabel!
    @IBOutlet weak var  selectionButton : UIButton!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
