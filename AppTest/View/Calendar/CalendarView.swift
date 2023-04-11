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
            Text("Calendar")
                .navigationBarTitle("Calendar Title", displayMode: .automatic)
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
