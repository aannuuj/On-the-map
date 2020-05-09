//
//  String+Extension.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation

//MARK:- String extension
extension String{
    
    //MARK: Email Id regex check
    /// Returns True is Email-Id is valid and False if not.
    var isEmail: Bool {
        do {
            let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
            let regex = try NSRegularExpression(pattern: pattern , options: .caseInsensitive)
            let options = NSRegularExpression.MatchingOptions(rawValue: 0)
            let range = NSMakeRange(0, self.count)
            let bool = regex.firstMatch(in: self, options: options, range: range) != nil
            return bool
        } catch {
            return false
        }
    }
}
