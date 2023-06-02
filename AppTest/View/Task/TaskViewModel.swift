import Combine
import Foundation

class TaskViewModel: ObservableObject {
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

extension TaskViewModel {
    enum ActionView {
    }
}
