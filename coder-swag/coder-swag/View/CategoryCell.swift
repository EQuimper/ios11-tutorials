//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Emanuel Quimper on 2017-08-29.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
