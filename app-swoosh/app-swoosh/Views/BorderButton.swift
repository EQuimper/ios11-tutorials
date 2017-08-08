//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Emanuel Quimper on 2017-08-08.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
    
}
