//
//  HeaderTabbarItem.swift
//  AppTest
//
//  Created by tomosia on 4/14/23.
//

import SwiftUI

struct HeaderTabbarItem: View {
    @Binding var currentTab: Int
    var tab: Int
    var label: String
    var height: CGFloat
    var width = UIScreen.main.bounds.width

    var body: some View {
        Button {
            self.currentTab = tab
        } label: {
            HStack {
                Text(label)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor((currentTab == tab) ? Colors.white : Colors.black)
            }
            .frame(width: width / 4, height: height / 3)
            .background((currentTab == tab) ? Colors.ceruleanBlue : Colors.background)
        }
    }
}
