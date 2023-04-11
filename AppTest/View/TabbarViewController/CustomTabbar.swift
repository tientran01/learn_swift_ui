//
//  CustomTabbar.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct CustomTabbar: View {
    var body: some View {
        TabView {
            CustomTabbarItem(item: CustomItem.input)
                .tabItem {
                    Text(CustomItem.input.label)
                    Image(systemName: CustomItem.input.icon).font(.system(size: 20))
                }
            CustomTabbarItem(item: CustomItem.calendar)
                .tabItem {
                    Text(CustomItem.calendar.label)
                    Image(systemName: CustomItem.calendar.icon).font(.system(size: 20))
                }
            CustomTabbarItem(item: CustomItem.report)
                .tabItem {
                    Text(CustomItem.report.label)
                    Image(systemName: CustomItem.report.icon).font(.system(size: 20))
                }
            CustomTabbarItem(item: CustomItem.more)
                .tabItem {
                    Text(CustomItem.more.label)
                    Image(systemName: CustomItem.more.icon).font(.system(size: 20))
                }
        }
        .accentColor(Colors.ceruleanBlue)
        .foregroundColor(Colors.blue)
        
    }
}

struct CustomTabbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabbar()
    }
}
