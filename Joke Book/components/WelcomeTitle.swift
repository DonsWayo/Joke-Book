//
//  WelcomeTitle.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import SwiftUI

struct WelcomeTitleView: View {
    var body: some View {
        VStack {

            Text("Welcome to")
                .customTitleText()

            Text("Joke Book")
                .customTitleText()
                .foregroundColor(.mainColor)
        }
    }
}
