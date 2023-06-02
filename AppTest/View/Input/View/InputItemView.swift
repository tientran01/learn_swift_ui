//
//  InputItemView.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

enum InputItem: String, CaseIterable {
    case date
    case expense

    var trailinIcon: Image {
        switch self {
        case .date:
            return Assets.icArrowNext
        case .expense:
            return Assets.icMoney
        }
    }
}

import SwiftUI

struct InputItemView: View {
    var title: String
    var height: CGFloat = 55
    var align: Alignment = .leading
    var descView: any View
    var inputItem: InputItem = .date
    var leadingIcon: Bool = false
    var trailingIcon: Bool = false

    private func iconHeight() -> CGFloat {
        if inputItem == InputItem.date {
            return 15
        }
        return 30
    }

    var body: some View {
        HStack(spacing: 10) {
            Text(title)
                .foregroundColor(Colors.text)
                .font(.system(size: 14, weight: .semibold))
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)
                .padding(.leading, 10)

            leadingIcon ? CustomIcon(
                icon: Assets.icArrowPrevious,
                width: iconHeight(),
                height: iconHeight()
            ) : nil

            AnyView(descView)
                .frame(alignment: align)
                .padding(.trailing, trailingIcon ? 0 : 15)

            trailingIcon ? CustomIcon(
                icon: inputItem.trailinIcon,
                width: iconHeight(),
                height: iconHeight()
            ).padding(.trailing, 10)
                : nil
        }
        .frame(
            width: UIScreen.main.bounds.width,
            height: height,
            alignment: align
        )
        .background(Colors.background)
    }
}
