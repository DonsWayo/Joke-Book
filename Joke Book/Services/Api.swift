//
//  Api.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import Foundation
import Combine

struct Api {

    struct Response<Joke> {
        let value: [Joke]
        let response: URLResponse
    }
    
    func run<Joke: Decodable>(_ request: URLRequest) -> AnyPublisher<Response<Joke>, Error> {
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .tryMap { result -> Response<Joke> in
                let value = try JSONDecoder().decode([Joke].self, from: result.data)
                return Response(value: value, response: result.response)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
