//
//  CustomHeaderTabbar.swift
//  AppTest
//
//  Created by tomosia on 4/14/23.
//

import SwiftUI

struct CustomHeaderTabbar: View {
    var height: CGFloat
    var width = UIScreen.main.bounds.width
    @Binding var currentTab: Int
    var tabBarOptions: [String] = ["Expense", "Income"]

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            ForEach(Array(zip(
                self.tabBarOptions.indices,
                self.tabBarOptions
            )),
            id: \.0,
            content: {
                index, name in
                HeaderTabbarItem(
                    currentTab: self.$currentTab,
                    tab: index,
                    label: name,
                    height: height
                )

            })
        }
        .frame(width: width / 2, height: height / 3)
        .background(Colors.background)
        .cornerRadius(10)
        .padding(.bottom, 5)
    }
}
