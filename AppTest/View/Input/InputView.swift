//
//  HomeView.swift
//  AppTest
//
//  Created by tomosia on 4/10/23.
//

import SwiftUI

struct InputView: View {
    var width = UIScreen.main.bounds.width
    var bodyHeight = UIScreen.main.bounds.height * 2 / 4
    var footerHeight = UIScreen.main.bounds.height * 1 / 4 + 60
    @State var currentTab: Int = 0
    @StateObject var inputViewModel: InputViewModel
    @StateObject var model: ReportViewModel = ReportViewModel()

    var body: some View {
        VStack {
            headerView()
            bodyView()
            bottomIncomeView()
        }
        .onTapGesture(perform: UIApplication.dismissKeyboard)
    }

    var columns: [GridItem] = Array(
        repeating: .init(.flexible(), alignment: .center),
        count: 3
    )

    private func headerHeight() -> CGFloat {
        return UIScreen.main.bounds.height - bodyHeight - footerHeight
    }

    private func headerView() -> some View {
        HStack(alignment: .center) {
            Spacer()
            Spacer()
            CustomHeaderTabbar(
                height: headerHeight(),
                currentTab: self.$currentTab
            )
            Spacer()
            Image(systemName: "pencil.tip")
                .foregroundColor(Colors.ceruleanBlue)
                .padding(.trailing, 15)
        }
        .frame(width: width, height: headerHeight(), alignment: .bottom)
        .background(Colors.headerBackground)
    }

    private func bodyView() -> some View {
        TabView(selection: $currentTab) {
            expensiveView().tag(0)
            incomeView().tag(1)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(width: width, height: bodyHeight)
        .background(Colors.background)
    }

    private func expensiveView() -> some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                InputItemView(
                    title: "Date",
                    descView: CustomTextField(
                        username: $model.myMessage,
                        autocorrectionDisabled: true,
                        multilineTextAlignment: .center,
                        disabled: true
                    ),
                    trailingContentItem: .date,
                    leadingIcon: true,
                    trailingIcon: true
                )
                Divider()
                InputItemView(
                    title: "Note",
                    descView: CustomTextField(
                        username: $model.myMessage,
                        hintText: "Chưa nhập vào",
                        autocorrectionDisabled: true,
                        disabled: true
                    )
                )
                Divider()
                InputItemView(
                    title: "Expense",
                    descView: CustomTextField(
                        username: $model.myMessage,
                        fontSize: 20,
                        fontWeight: .bold,
                        keyboardType: .phonePad,
                        autocorrectionDisabled: true,
                        disabled: true
                    ),
                    trailingContentItem: .expense,
                    trailingIcon: true
                )
                Divider()
                listCategoriesOfExpense()
            }
        }
    }

    private func incomeView() -> some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                InputItemView(
                    title: "Date",
                    descView: CustomTextField(
                        username: $model.myMessage,
                        autocorrectionDisabled: true,
                        multilineTextAlignment: .center,
                        disabled: true
                    ),
                    trailingContentItem: .date,
                    leadingIcon: true,
                    trailingIcon: true
                )
                Divider()
                InputItemView(
                    title: "Note",
                    descView: CustomTextField(
                        username: $model.myMessage,
                        hintText: "Chưa nhập vào",
                        autocorrectionDisabled: true,
                        disabled: true
                    )
                )
                Divider()
                InputItemView(
                    title: "Income",
                    descView: CustomTextField(
                        username: $model.myMessage,
                        fontSize: 20,
                        fontWeight: .bold,
                        keyboardType: .phonePad,
                        autocorrectionDisabled: true,
                        disabled: true
                    ),
                    trailingContentItem: .expense,
                    trailingIcon: true
                )
                Divider()
                listCategoriesOfIncome()
//                DatePickerView()
            }
        }
    }

    private func listCategoriesOfExpense() -> some View {
        VStack(alignment: .leading) {
            Text("Category")
                .foregroundColor(Colors.text)
                .font(.system(size: 14, weight: .semibold))
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)

            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(inputViewModel.listCategoriesOfExpense(), id: \.id) { category in
                    CustomCategoryItem(
                        icon: category.icon,
                        iconColor: category.iconColor,
                        title: category.title,
                        action: category.action,
                        isEdit: category.isEdit
                    )
                }
            }
        }
        .padding(10)
    }

    private func listCategoriesOfIncome() -> some View {
        VStack(alignment: .leading) {
            Text("Category")
                .foregroundColor(Colors.text)
                .font(.system(size: 14, weight: .semibold))
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)

            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(inputViewModel.listCategoriesOfIncome(), id: \.id) { category in
                    CustomCategoryItem(
                        icon: category.icon,
                        iconColor: category.iconColor,
                        title: category.title,
                        action: category.action,
                        isEdit: category.isEdit
                    )
                }
            }
        }
        .padding(10)
    }

    private func bottomExpenseView() -> some View {
        VStack {
            CustomButton(
                title: "Submit",
                backgroundColor: Colors.ceruleanBlue,
                action: {
                    print("Hello")
                })
        }
        .frame(width: width, height: footerHeight, alignment: .top)
        .background(Colors.background)
        .padding(.top, 0)
    }

    private func bottomIncomeView() -> some View {
        VStack {
            CustomButton(
                title: "Income",
                backgroundColor: Colors.ceruleanBlue,
                action: {
                    print("Hello")
                },
                fontColor: Colors.white
            )
        }
        .frame(width: width, height: footerHeight, alignment: .top)
        .background(Colors.background)
        .padding(.top, 0)
    }
}
