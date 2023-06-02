import Combine
import Foundation

class ChatViewModel: ObservableObject {
    enum RouteView {
    }

    private var cancellables = Set<AnyCancellable>()
    private let route = PassthroughSubject<RouteView, Never>()
    let action = PassthroughSubject<ActionView, Never>()

    init() {
        binding()
    }

    private func binding() {
    }
}

extension ChatViewModel {
    enum ActionView {
    }
}
