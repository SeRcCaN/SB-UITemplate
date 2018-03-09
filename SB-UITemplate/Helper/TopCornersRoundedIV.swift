//
//  TopCornersRoundedIV.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 1.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

class TopCornersRoundedIV: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView(){
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        layer.cornerRadius = 15
        
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }

}
