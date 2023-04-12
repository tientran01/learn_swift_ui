//
//  AppTestApp.swift
//  AppTest
//
//  Created by tomosia on 4/7/23.
//

import SwiftUI

@main
struct AppTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onTapGesture(perform: UIApplication.dismissKeyboard)
        }
    }
}

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
