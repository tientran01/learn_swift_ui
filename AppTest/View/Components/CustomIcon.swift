//
//  CustomIcon.swift
//  AppTest
//
//  Created by tomosia on 4/11/23.
//

import SwiftUI

struct CustomIcon: View {
    var icon: Image
    var renderingMode: Image.TemplateRenderingMode = .template
    var iconColor: Color = Colors.text
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        icon
            .resizable()
            .renderingMode(renderingMode)
            .foregroundColor(iconColor)
            .frame(width: width, height: height)
    }
}
