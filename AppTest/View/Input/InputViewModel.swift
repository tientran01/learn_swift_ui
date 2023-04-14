//
//  InputViewModel.swift
//  AppTest
//
//  Created by tomosia on 4/11/23.
//

import Foundation
class InputViewModel: ObservableObject {
    func listCategoriesOfExpense() -> [CategoryItem] {
        let item1 = CategoryItem(
            id: 1,
            title: "Chi tiêu hằng tuần",
            icon: Assets.icMoney,
            iconColor: .red,
            action: {
                print("Chi tiêu hằng tuần")
            }
        )
        let item2 = CategoryItem(
            id: 2,
            title: "House",
            icon: Assets.icHouse,
            iconColor: .green,
            action: {
                print("Money")
            }
        )
        let item3 = CategoryItem(
            id: 3,
            title: "Contact Free",
            icon: Assets.icBus,
            iconColor: .orange,
            action: {
                print("Contact Free")
            }
        )

        let item4 = CategoryItem(
            id: 4,
            title: "Contact Free",
            icon: Assets.icBus,
            iconColor: .orange,
            action: {
                print("Contact Free")
            }
        )
        let item5 = CategoryItem(
            id: 5,
            title: "Chi tiêu hằng tuần Chi tiêu hằng tuần",
            icon: Assets.icMoney,
            iconColor: .red,
            action: {
                print("Chi tiêu hằng tuần")
            }
        )

        let item6 = CategoryItem(
            id: 6,
            title: "Edit",
            icon: Assets.icArrowNext,
            iconColor: Colors.text,
            action: {
                print("Chi tiêu hằng tuần")
            },
            isEdit: true
        )

        return [item1, item2, item3, item4, item5, item6]
    }

    func listCategoriesOfIncome() -> [CategoryItem] {
        let item1 = CategoryItem(
            id: 1,
            title: "Chi tiêu hằng tuần",
            icon: Assets.icMoney,
            iconColor: .red,
            action: {
                print("Chi tiêu hằng tuần")
            }
        )
        let item2 = CategoryItem(
            id: 2,
            title: "House",
            icon: Assets.icHouse,
            iconColor: .green,
            action: {
                print("Money")
            }
        )
        let item3 = CategoryItem(
            id: 3,
            title: "Edit",
            icon: Assets.icArrowNext,
            iconColor: Colors.text,
            action: {
                print("Chi tiêu hằng tuần")
            },
            isEdit: true
        )

        return [item1, item2, item3]
    }
}
