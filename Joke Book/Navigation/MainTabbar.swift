//
//  MainTabbar.swift
//  Joke Book
//
//  Created by DonsWayo on 28/2/21.
//

import SwiftUI

struct MainTabbar: View {
    var body: some View {
            TabView() {
                JokesScreen(title: "General", typeApi: .programming, viewModel: JokeViewModel(type: .programming))
                    .tabItem {
                        Image("book")
                            .renderingMode(.template)
                        Text("General")
                       }
                JokesScreen(title: "Programming", typeApi: .programming, viewModel: JokeViewModel(type: .programming))
                    .tabItem {
                        Image("code")
                            .renderingMode(.template)
                        Text("Code")
                       }
                JokesScreen(title: "Knock Knock", typeApi: .knock_knock, viewModel: JokeViewModel(type: .knock_knock))
                    .tabItem {
                        Image("pulse")
                            .renderingMode(.template)
                        Text("Knock")
                       }
            }.accentColor(Color.mainColor)
    }
}

struct MainTabbar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbar()
    }
}
