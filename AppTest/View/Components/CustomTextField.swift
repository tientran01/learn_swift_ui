//
//  CustomTextField.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var username: String
    var hintText: String = ""
    var fontSize: CGFloat = 15
    var fontWeight: Font.Weight = .medium
    var keyboardType: UIKeyboardType = .default
    var autocorrectionDisabled: Bool = false
    var multilineTextAlignment: TextAlignment = .leading
    var lineLimit: Int?
    var disabled: Bool = false

    var body: some View {
        TextField(hintText, text: $username)
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundColor(Colors.text)
            .keyboardType(keyboardType)
            .multilineTextAlignment(multilineTextAlignment)
            .lineLimit(lineLimit)
            .autocorrectionDisabled(autocorrectionDisabled)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .disabled(disabled)
    }
}
