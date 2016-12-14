//
//  CustomCell.swift
//  Make
//
//  Created by Julian Dragoi on 30/11/2015.
//  Copyright © 2015 Julian Dragoi. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ desLabelText: String, imageName: String)
    {
        self.desLabel.text = desLabelText
        self.myImageView.image = UIImage(named: imageName)
    }

}
