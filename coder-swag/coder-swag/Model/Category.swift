//
//  Category.swift
//  coder-swag
//
//  Created by Emanuel Quimper on 2017-08-29.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) var title: String
    private(set) var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
