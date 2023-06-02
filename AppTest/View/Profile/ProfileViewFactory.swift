import Combine
import Foundation
import SwiftUI

struct ProfileViewFactory: View {
    var body: some View {
        let router = ProfileRouter()
        let viewModel = ProfileViewModel()
        return ProfileView(viewModel: viewModel, router: router).coordinator(router)
    }
}
