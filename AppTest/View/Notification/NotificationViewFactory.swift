import Combine
import Foundation
import SwiftUI

struct NotificationViewFactory: View {
    var body: some View {
        let router = NotificationRouter()
        let viewModel = NotificationViewModel()
        return NotificationView(viewModel: viewModel, router: router).coordinator(router)
    }
}
