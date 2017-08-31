//
//  AvatarCell.swift
//  Smack
//
//  Created by Emanuel Quimper on 2017-08-30.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    // Outlets
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
}
