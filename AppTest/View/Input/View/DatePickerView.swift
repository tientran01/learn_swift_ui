//
//  DatePickerView.swift
//  AppTest
//
//  Created by tomosia on 4/14/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var date: Date = Date()
    @State var showPicker: Bool = false

    private func dateFormatter() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = dateFormatter.string(from: date)
        return dateString
    }

    var body: some View {
        Button(
            action: {
                showPicker.toggle()
            },
            label: {
                Text(dateFormatter())
            })
            .onTapGesture {
                DatePicker(
                    selection: $date,
                    in: ...Date(),
                    displayedComponents: .date
                ) {}
            }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
