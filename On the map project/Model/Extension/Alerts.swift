//
//  Alerts.swift
//  On The Map
//
//  Created by Hariom Palkar on 10/05/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//
import UIKit
import SystemConfiguration


extension UIViewController {
    //MARK:- ALERT fucntion for error display
    internal func AuthAlert(_ message:String, completion: (() -> Void)? = nil){
        UIDevice.invalidVibrate()
        let title = "Someting is wrong!"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    
    //MARK: - ALERT function for network connection
    internal func networkErrorAlert(titlepass : String) {
        // Vibrates on errors
        UIDevice.invalidVibrate()
        let alert = UIAlertController(title: titlepass, message: "Make sure you are connected to the internet", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Settings", style: .default) { (_) -> Void in
            let settingsUrl = NSURL(string: UIApplication.openSettingsURLString)
            if let url = settingsUrl {
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            }
        })
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    //MARK:- ALERT fucntion for success display
    internal func successLAert(_ message:String, completion: (() -> Void)? = nil){
        UIDevice.validVibrate()
        let title = "Wohh You Made it!"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
            self.navigationController?.popToRootViewController(animated: true)
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}

