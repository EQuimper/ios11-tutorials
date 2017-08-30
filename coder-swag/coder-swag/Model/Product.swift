//
//  Product.swift
//  coder-swag
//
//  Created by Emanuel Quimper on 2017-08-30.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) var title: String
    private(set) var image: String
    private(set) var price: String
    
    init(title: String, image: String, price: String) {
        self.title = title
        self.image = image
        self.price = price
    }
    
}
