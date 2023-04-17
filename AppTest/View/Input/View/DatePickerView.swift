//
//  DatePickerView.swift
//  AppTest
//
//  Created by tomosia on 4/14/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var date: Date = Date()
    var body: some View {
        ZStack {
            Colors.ceruleanBlue.edgesIgnoringSafeArea(.all)
            DatePicker(selection: $date, displayedComponents: .date) {
            }
            .padding(10)
            .labelsHidden()
            .datePickerStyle(WheelDatePickerStyle())
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
