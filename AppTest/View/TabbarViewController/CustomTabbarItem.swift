//
//  CustomTabbarItem.swift
//  AppTest
//
//  Created by tomosia on 4/7/23.
//

import SwiftUI

enum CustomItem: String, CaseIterable {
    case input
    case calendar
    case report
    case more
    
    var label: String {
        switch self {
        case .input:
            return "Input"
        case .calendar:
            return "Calendar"
        case .report:
            return "Report"
        case .more:
            return "Other"
        }
    }
    
    var icon: String {
        switch self {
        case .input:
            return "pencil.tip"
        case .calendar:
            return "calendar"
        case .report:
            return "exclamationmark.bubble.fill"
        case .more:
            return "ellipsis.rectangle.fill"
        }
    }
    
    var contentView: some View {
        switch self {
        case .input:
            return AnyView(InputView(inputViewModel: InputViewModel()))
        case .calendar:
            return AnyView(CalendarView())
        case .report:
            return AnyView(ReportView())
        case .more:
            return AnyView(MoreView())
        }
    }
}

struct CustomTabbarItem: View {
    var item: CustomItem
    var selectedColor = Colors.blue

    var body: some View {
        item.contentView
    }
}
