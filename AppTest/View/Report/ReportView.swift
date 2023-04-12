//
//  ReportView.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct ReportView: View {
    @StateObject var model: ReportViewModel = ReportViewModel()

    var body: some View {
        VStack {
            CustomTextField(username: $model.myText, hintText: "Enter your name")

            Text(model.myMessage)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(Colors.blue)
        }
        .padding(.horizontal, 20)
        .environmentObject(model)
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
