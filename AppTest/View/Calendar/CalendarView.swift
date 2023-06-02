//
//  CalendarView.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct CalendarView: View {
    @State private var date = Date()

    var body: some View {
        NavigationView {
            VStack {
                DatePicker(
                    selection: $date,
                    in: ...Date(),
                    displayedComponents: .date
                ) {
                    Text("Choose a date")
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
