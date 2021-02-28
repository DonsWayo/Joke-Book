//
//  Joke.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import Foundation

struct Joke: Codable, Identifiable {
    let id: Int
    let type: TypeEnum
    let setup, punchline: String
}

enum TypeEnum: String, Codable {
    case general = "general"
    case knock_knock = "knock-knock"
    case programming = "programming"
}
