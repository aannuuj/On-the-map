//
//  LoginRequest.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation

struct Udacity:Codable {
    let udacity:User
}

// struct to store the login credentials for request
struct User:Codable {
    let username:String
    let password:String
}
