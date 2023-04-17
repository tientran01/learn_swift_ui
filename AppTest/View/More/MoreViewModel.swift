//
//  MoreViewModel.swift
//  AppTest
//
//  Created by tomosia on 4/13/23.
//

import Combine
import Foundation

class MoreViewModel: ObservableObject {
    @Published var users: [User] = []
    func fetchUser() {
        let userUrlString = "https://jsonplaceholder.typicode.com/users"
        if let url = URL(string: userUrlString) {
            URLSession
                .shared
                .dataTask(with: url) { [weak self] data, _, error in
                    if error != nil {
                    } else {
                        let decode = JSONDecoder()
                        decode.keyDecodingStrategy = .convertFromSnakeCase

                        if let data = data,
                           let users = try? decode.decode([User].self, from: data) {
                            self?.users = users
                        } else {
                        }
                    }
                }.resume()
        }
    }
}
