//
//  Url+Extension.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import UIKit

//MARK:- URL checker
/// Returns true if URL is a valid URL and false if not.
extension URL{
    var isValid : Bool{
        return UIApplication.shared.canOpenURL(self)
    }
}
