//
//  Constants.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

//MARK:- CONSTANTS
/// TO BE USED BY ALL / ANY VIEWCONTROLLER
import UIKit

let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)

var FBLogin : Bool = false

var postisExisting : Bool {
    if UserDefaults.standard.value(forKey: "objectId") == nil {
        return false
    }
    return true
}

public func debugLog(message: String) {
    #if DEBUG
    debugPrint("=======================================")
    debugPrint(message)
    debugPrint("=======================================")
    #endif
}
