//
//  CustomButton.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var backgroundColor: Color
    var action: () -> Void
    var fontColor: Color = Colors.text

    var body: some View {
        Button(action: action, label: {
            Text(title.uppercased())
                .padding(.vertical, 15)
                .padding(.horizontal, 60)
        })
        .labelsHidden()
        .font(.system(size: 15, weight: .medium))
        .foregroundColor(fontColor)
        .background(backgroundColor)
        .cornerRadius(10)
        .padding(.top, 40)
    }
}
