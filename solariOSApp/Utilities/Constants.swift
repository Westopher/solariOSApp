//
//  Constants.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/13/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import Foundation
import UIKit

//completion handler
typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://nysolariosapp.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"

//colors
let placeHolder = #colorLiteral(red: 0.3619792461, green: 0.5534585714, blue: 0.9352012277, alpha: 0.5)

//notification constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

//segue
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "buttonsVC"
let TO_LOGIN = "loginVC"


//user defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]
