//
//  SuggestCVCell.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 1.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

class SuggestCVCell: UICollectionViewCell {
    
    @IBOutlet weak var suggestImageView: TopCornersRoundedIV!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = 15
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        
        self.layer.shadowOpacity = 0.25
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 10.0
        self.layer.shadowOffset = CGSize(width: 5, height: 10)
    }

}
