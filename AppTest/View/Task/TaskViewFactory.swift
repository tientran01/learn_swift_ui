import Combine
import Foundation
import SwiftUI

struct TaskViewFactory: View {
    var body: some View {
        let router = TaskRouter()
        let viewModel = TaskViewModel()
        return TaskView(viewModel: viewModel, router: router).coordinator(router)
    }
}
