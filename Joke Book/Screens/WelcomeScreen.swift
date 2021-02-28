//
//  WelcomeScreen.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import SwiftUI

struct WelcomeScreen: View {

    @EnvironmentObject var store: Store

    var body: some View {
            VStack(alignment: .center) {
                Spacer()
                WelcomeTitleView()
                LottieView().frame(width: 500, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.all, -100)
                Text("Jokes that make sense")
                Spacer()
                
                Button(action: {
                    self.store.login()
                    }) {
                        Text("Continue").customButton()
                    }.padding(.horizontal)
            }
               
        
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
