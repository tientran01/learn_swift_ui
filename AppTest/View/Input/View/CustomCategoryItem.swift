//
//  CustomCategoryItem.swift
//  AppTest
//
//  Created by tomosia on 4/11/23.
//

import SwiftUI

struct CustomCategoryItem: View {
    var icon: Image
    var iconColor: Color
    var title: String
    var fontColor: Color = Colors.text
    var action: () -> Void

    var width = UIScreen.main.bounds.width / 3 - 10

    var body: some View {
        VStack(spacing: 5) {
            CustomIcon(
                icon: icon,
                iconColor: iconColor,
                width: 30,
                height: 30
            )
            
            Text(title)
                .foregroundColor(fontColor)
                .font(.system(size: 13, weight: .regular))
                .fixedSize(horizontal: true, vertical: false)
        }
        .frame(width: width, height: 70)
        .background(Colors.headerBackground)
        .cornerRadius(15)
        .onTapGesture {
            print("Hello")
        }
    }
}
