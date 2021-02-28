//
//  JokesScreen.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import SwiftUI

struct JokesScreen: View {
    var title: String
    var typeApi: ApiPath
    @ObservedObject var viewModel: JokeViewModel
    

    var body: some View {
        if viewModel.loading {
            ProgressView()
        } else {
            JokesList(jokes: viewModel.jokes, title: title)
        }
    }

    /*
     Failed to produce diagnostic for expression; please file a bug report
     struct JokesScreen_Previews: PreviewProvider {
         static var previews: some View {
             JokesScreen(title: JokeViewModel(type: .general), typeApi: .general, viewModel: "title")
         }
     }
     **/

}
