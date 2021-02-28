//
//  AppSettings.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//
import Foundation

struct AppSettings {
    static let mainColor = "#008080"
}

enum ApiPath: String {
    case general = "jokes/general/ten"
    case knock_knock = "jokes/knock-knock/ten"
    case programming = "jokes/programming/ten"
}

enum JokeApi {
    static let apiClient = Api()
    static let baseUrl = URL(string: "https://official-joke-api.appspot.com/")!
}
