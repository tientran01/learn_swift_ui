//
//  MoreViewModel.swift
//  AppTest
//
//  Created by tomosia on 4/13/23.
//

import Combine
import Foundation

class MoreViewModel: ObservableObject {
    let passthroughSubject = PassthroughSubject<String, Error>()
    private var cancellables = Set<AnyCancellable>()

    init() {
        passthroughSubject.sink(
            receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print(error.localizedDescription)
                }
                print(completion)
            }, receiveValue: { value in
                print(value)
            }
        ).store(in: &cancellables)
    }
}
