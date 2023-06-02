//
//  TabItemView.swift
//  AppTest
//
//  Created by tomosia on 6/1/23.
//

import SwiftUI

struct TabItemView: View {
    var item: TabItem
    var isSelected: Bool
    var body: some View {
        icon
            .foregroundColor(isSelected ? Colors.black : Colors.russianGreen)
        Text(text)
    }
    
    var icon: Image {
        switch item {
        case .task:
            return Assets.icListTask
        case .chat:
            return Assets.icChat
        case .notification:
            return Assets.icBell
        case .profile:
            return Assets.icUser
        }
    }
    
    var text: String {
        switch item {
        case .task:
            return Strings.Main.Tabbar.task
        case .chat:
            return Strings.Main.Tabbar.chat
        case .notification:
            return Strings.Main.Tabbar.notification
        case .profile:
            return Strings.Main.Tabbar.profile
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(item: TabItem.task, isSelected: true)
    }
}
