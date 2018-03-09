//
//  DetailTVCell.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 2.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

class DetailTVCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var detailImageView: TopCornersRoundedIV!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
}
