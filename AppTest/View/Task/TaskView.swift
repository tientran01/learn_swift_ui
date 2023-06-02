import Combine
import Foundation
import SwiftUI

struct TaskView: View {
    @StateObject var viewModel: TaskViewModel
    let router: TaskRouter

    var body: some View {
        ZStack {
            Text("Helelo")
        }
    }
}
