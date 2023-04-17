//
//  CustomUserCardView.swift
//  AppTest
//
//  Created by tomosia on 4/17/23.
//

import SwiftUI

struct CustomUserCardView: View {
    var user: User

    var body: some View {
        VStack(alignment: .leading) {
            Text("Name: \(user.name)")
            Text("Email: \(user.email)")
            Text("Phone: \(user.phone)")
            Divider()
            Text("Company: \(user.company.name)")
        }
        .font(.system(size: 15, weight: .medium))
        .foregroundColor(Colors.text)
        .padding(20)
        .frame(alignment: .leading)
        .background(Colors.background)
        .cornerRadius(10)
    }
}

//struct CustomUserCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomUserCardView()
//    }
//}
