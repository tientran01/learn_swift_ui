//
//  ReportViewModel.swift
//  AppTest
//
//  Created by tomosia on 4/12/23.
//
import Combine
import Foundation

class ReportViewModel: ObservableObject {
    @Published var myText: String = ""
    @Published var myMessage: String = ""

    init() {
        $myText
            .map { $0.isEmpty ? "empty YES" : "NO" }
            .assign(to: &$myMessage)
    }
}
