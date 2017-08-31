//
//  Constants.swift
//  Smack
//
//  Created by Emanuel Quimper on 2017-08-30.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()
typealias ErrorHandler = (_ Error: Bool) -> ()

// URL Constants
let BASE_URL = "https://smack-api-ios-course.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

// Segues
let To_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND_TO_CHANNEL = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers

let HEADERS = [
    "Content-Type": "application/json; charset=utf-8"
]




