//
//  CalendarView.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(1 ... 100, id: \.self) {
                        Text("Row \($0)")
                    }
                }
            }
            .padding(10)
            .navigationTitle("Calendar")
        }
        .navigationBarTitleDisplayMode(.large)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
