//
//  Store.swift
//  Joke Book
//
//  Created by DonsWayo on 28/2/21.
//

import Combine

class Store: ObservableObject {

    @Published var isLoggedin = false

    func login() {
        self.isLoggedin = true
    }
}
