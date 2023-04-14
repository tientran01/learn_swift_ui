//
//  Category.swift
//  AppTest
//
//  Created by tomosia on 4/11/23.
//

import Foundation
import SwiftUI

struct CategoryItem {
    var id: Int
    var title: String
    var icon: Image
    var iconColor: Color
    var action: () -> Void
    var isEdit: Bool = false
}


