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
    var footerHeight = UIScreen.main.bounds.height / 4 + 60

    @StateObject var inputViewModel: InputViewModel
    @StateObject var model: ReportViewModel = ReportViewModel()
    

    var body: some View {
        VStack {
            headerView()
            bodyView()
            bottomView()
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

    private func customTabHeader() -> some View {
        HStack(spacing: 0) {
            HStack {
                Text("Expense")
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(Colors.text)
            }
            .frame(width: width / 4, height: headerHeight() / 3)
            .background(Colors.blue)

            HStack {
                Text("Income")
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(Colors.text)
            }
            .frame(width: width / 4, height: headerHeight() / 3)
            .background(Colors.background)
        }
        .frame(width: width / 2, height: headerHeight() / 3)
        .background(
            Colors.background
        )
        .cornerRadius(10)
        .padding(.bottom, 5)
    }

    private func headerView() -> some View {
        HStack(alignment: .center) {
            Spacer()
            Spacer()
            customTabHeader()
            Spacer()
            Image(systemName: "pencil.tip")
                .foregroundColor(Colors.ceruleanBlue)
                .padding(.trailing, 15)
        }
        .frame(width: width, height: headerHeight(), alignment: .bottom)
        .background(Colors.headerBackground)
    }

    private func bodyView() -> some View {
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
                listCategories()
            }
        }
        .frame(width: width, height: bodyHeight)
        .background(Colors.background)
    }

    private func bottomView() -> some View {
        VStack {
            CustomButton(
                title: "Submit",
                backgroundColor: Colors.blue,
                action: {
                    print("Hello")
                })
        }
        .frame(width: width, height: footerHeight, alignment: .top)
        .background(Colors.background)
        .padding(.top, 0)
    }

    private func listCategories() -> some View {
        VStack(alignment: .leading) {
            Text("Category")
                .foregroundColor(Colors.text)
                .font(.system(size: 14, weight: .semibold))
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)

            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(inputViewModel.listCategories(), id: \.id) { category in
                    CustomCategoryItem(
                        icon: category.icon,
                        iconColor: category.iconColor,
                        title: category.title,
                        action: category.action
                    )
                }
            }
        }
        .padding(10)
    }
}
