//
//  UserDetailView.swift
//  AppTest
//
//  Created by tomosia on 4/17/23.
//

import SwiftUI

struct UserDetailView: View {
    var user: User
    var body: some View {
        HStack(spacing: 40) {
            Assets.icBus
                .frame(width: 10, height: 10)
                .foregroundColor(Colors.blue)

            VStack {
                Text(user.name)
                Text(user.email)
                Text(user.username)
            }
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(Colors.text)
        }
        .frame(alignment: .leading)
    }
}
