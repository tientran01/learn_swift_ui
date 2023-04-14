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
    var isEdit: Bool = false

    var width = UIScreen.main.bounds.width / 3 - 10

    var body: some View {
        VStack(spacing: 5) {
            CustomIcon(
                icon: icon,
                iconColor: iconColor,
                width: isEdit ? 20 : 30,
                height: isEdit ? 20 : 30
            )

            Text(title)
                .foregroundColor(fontColor)
                .font(.system(size: 13, weight: .regular))
                .lineLimit(1)
                .frame(alignment: .leading)
                .padding(.horizontal, 5)
        }
        .frame(width: width, height: 70)
        .background(Colors.headerBackground)
        .cornerRadius(15)
    }
}
