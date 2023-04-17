//
//  MoreView.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct MoreView: View {
    @StateObject private var model = MoreViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(model.users, id: \.id) { user in
                        NavigationLink(
                            destination: UserDetailView(user: user),
                            label: {
                                CustomUserCardView(user: user)
                            }
                        )
                    }
                }
                .onAppear(perform: model.fetchUser)
            }
            .padding(10)
            .navigationTitle("More")
            .foregroundColor(Colors.text)
        }
        .navigationBarTitleDisplayMode(.large)
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
