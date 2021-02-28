//
//  JokesList.swift
//  Joke Book
//
//  Created by DonsWayo on 28/2/21.
//

import SwiftUI

struct JokesList: View {
    var jokes: [Joke]
    var title: String
    
    var body: some View {
        NavigationView {
            List(jokes) { joke in // 2
                NavigationLink(destination: JokeDetailScreen(punchLine: joke.punchline)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(joke.setup) // 3a
                                .font(.headline)

                        }
                    }
                }
            }.navigationBarTitle(title)
        }.navigationViewStyle(StackNavigationViewStyle())
        
        }
    }


struct JokesList_Previews: PreviewProvider {
    static var previews: some View {
        JokesList(jokes: [], title: "String")
    }
}
