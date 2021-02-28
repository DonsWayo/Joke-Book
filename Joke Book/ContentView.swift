//
//  ContentView.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var store = Store()


    var body: some View {
        VStack {
            if !store.isLoggedin {
                    WelcomeScreen()
                } else {
                    MainTabbar()
                }
        }
        .environmentObject(store)
    }
}

