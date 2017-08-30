//
//  DataService.swift
//  coder-swag
//
//  Created by Emanuel Quimper on 2017-08-29.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", image: "hat01.png", price: "$18"),
        Product(title: "Devslopes Logo Hat Black", image: "hat02.png", price: "$22"),
        Product(title: "Devslopes Logo Hat White", image: "hat03.png", price: "$22"),
        Product(title: "Devslopes Logo Snapback", image: "hat04.png", price: "$20")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", image: "hoodie01.png", price: "$32"),
        Product(title: "Devslopes Logo Hoodie Red", image: "hoodie02.png", price: "$32"),
        Product(title: "Devslopes Hoodie Grey", image: "hoodie03.png", price: "$32"),
        Product(title: "Devslopes Hoodie Black", image: "hoodie04.png", price: "$32")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", image: "shirt01.png", price: "$18"),
        Product(title: "Devslopes Badge Shirt Light Grey", image: "shirt02.png", price: "$19"),
        Product(title: "Devslopes Logo Shirt Red", image: "shirt03.png", price: "$18"),
        Product(title: "Hustle Delegate  Grey", image: "shirt04.png", price: "$18"),
        Product(title: "Kickflip Sudios Black", image: "shirt05.png", price: "$18")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalsGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats;
    }
    
    func getHoodies() -> [Product] {
        return hoodies;
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalsGoods() -> [Product] {
        return digitalGoods
    }
}






