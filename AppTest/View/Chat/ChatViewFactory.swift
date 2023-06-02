import Combine
import Foundation
import SwiftUI

struct ChatViewFactory: View {
    var body: some View {
        let router = ChatRouter()
        let viewModel = ChatViewModel()
        return ChatView(viewModel: viewModel, router: router).coordinator(router)
    }
}
