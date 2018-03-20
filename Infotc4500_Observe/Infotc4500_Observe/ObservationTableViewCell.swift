//
//  ObservationTableViewCell.swift
//  Infotc4500_Observe
//
//  Created by William Smith on 3/20/18.
//  Copyright © 2018 William Smith. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {

    @IBOutlet weak var observationImage: UIImageView!
    @IBOutlet weak var observationName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
