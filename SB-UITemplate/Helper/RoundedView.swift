//
//  RoundedView.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 2.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.backgroundColor = UIColor(white: 1, alpha: 1)
        self.layer.cornerRadius = 15
        self.layer.shadowOpacity = 0.25
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 11.0
        self.layer.shadowOffset = CGSize(width: 0, height: 13)
    }
}
