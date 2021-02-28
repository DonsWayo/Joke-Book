//
//  JokeViewModel.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import Foundation
import Combine

class JokeViewModel: ObservableObject {
    
    @Published var jokes: [Joke] = []
    @Published var loading = true
    var cancellationToken: AnyCancellable?
    
    init(type: ApiPath) {
        switch type {
        case .general:
            getData(path: .general)
        case .knock_knock:
            getData(path: .knock_knock)
        case .programming:
            getData(path: .programming)
        }
    }
    
}

extension JokeViewModel {
    
    // Subscriber implementation
    func getData(path: ApiPath) {
        cancellationToken = JokeApi.request(path)
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: { (jokes) in
                    self.jokes = jokes // 7
                    self.loading = false
            })
    }
    
    
}
