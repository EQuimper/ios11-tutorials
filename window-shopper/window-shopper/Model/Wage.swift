//
//  Wage.swift
//  window-shopper
//
//  Created by Emanuel Quimper on 2017-08-29.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
