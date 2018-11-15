//
//  Constants.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/13/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import Foundation

//completion handler
typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://nysolariosapp.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//"https://nysolariosapp.herokuapp.com"
//API web requests go here

//segue
let TO_CREATE_ACCOUNT = "toCreateAccount"


//user defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
