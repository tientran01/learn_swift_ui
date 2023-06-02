import Combine
import Foundation
import SwiftUI

struct MainViewFactory: View {
    var body: some View {
        let router = MainRouter()
        let viewModel = MainViewModel()
        return MainView(viewModel: viewModel, router: router).coordinator(router)
    }
}
