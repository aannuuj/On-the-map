//
//  LoginResponse.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation

//MARK:- RESPONSE OF SUCCESSFUL LOGIN SESSION

struct Auth : Codable{
     var account : Account
     var session : Session
}

struct Account: Codable {
     var registered : Bool
     var key : String
}

struct Session: Codable {
     var id : String
     var expiration : String
}
