//
//  UIApplication.swift
//  AppTest
//
//  Created by tomosia on 4/13/23.
//

import Foundation
import UIKit

public extension UIApplication {

   static func dismissKeyboard() {
       let keyWindow = shared.connectedScenes
               .filter({$0.activationState == .foregroundActive})
               .map({$0 as? UIWindowScene})
               .compactMap({$0})
               .first?.windows
               .filter({$0.isKeyWindow}).first
       keyWindow?.endEditing(true)
   }
}
