//
//  LottieView.swift
//  Joke Book
//
//  Created by DonsWayo on 27/2/21.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
       var name = "book"
       var loopMode: LottieLoopMode = .loop

       func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
           let view = UIView(frame: .zero)

           let animationView = AnimationView()
           let animation = Animation.named(name)
           animationView.animation = animation
           animationView.contentMode = .scaleAspectFit
           animationView.loopMode = loopMode
           animationView.play()

           animationView.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(animationView)
           NSLayoutConstraint.activate([
               animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
               animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
           ])

           return view
       }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
    }
}
