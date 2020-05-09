//
//  NewStudentResponseResponse.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation

//MARK:- RESPONSE OF SUCCESSFUL STUDENT CREATION

struct NewStudentResponse : Codable{
     var objectId : String
     var createdAt : String
}

struct updtatedStudentResponse : Codable {
    var updatedAt : String
}
