//
//  AppState.swift
//  AppTest
//
//  Created by tomosia on 6/1/23.
//

import Foundation

class AppState: ObservableObject {
    static var shared = AppState()
    @Published var selectedTab = TabItem.task
}

enum TabItem {
    case task
    case chat
    case notification
    case profile
}
