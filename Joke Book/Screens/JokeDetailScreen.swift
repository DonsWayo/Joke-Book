//
//  JokeDetailScreen.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import SwiftUI

struct JokeDetailScreen: View {
    var punchLine: String
    
    var body: some View {
        Text(punchLine).padding(20)
    }
}

struct JokeDetailScreen_Previews: PreviewProvider {
    struct BindingTestHolder: View {
            var testItem: String = "Initial"
            var body: some View {
                JokeDetailScreen(punchLine: testItem)
            }
        }

        static var previews: some View {
            BindingTestHolder()
        }
}
