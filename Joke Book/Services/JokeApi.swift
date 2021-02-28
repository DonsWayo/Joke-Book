//
//  JokeApi.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import Foundation
import Combine

extension JokeApi {
    
    static func request(_ path: ApiPath) -> AnyPublisher<[Joke], Error> {
        
        guard let components = URLComponents(url: baseUrl.appendingPathComponent(path.rawValue), resolvingAgainstBaseURL: true)
            else { fatalError("FAIL create URLComponents") }
        
        let request = URLRequest(url: components.url!)
        
        return apiClient.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
