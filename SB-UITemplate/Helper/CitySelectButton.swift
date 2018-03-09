//
//  CitySelectButton.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 1.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit


@IBDesignable
class CitySelectButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = 15
        self.layer.shadowOpacity = 0.2
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 10.0
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
}
