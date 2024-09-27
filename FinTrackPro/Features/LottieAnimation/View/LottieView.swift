//
//  LottieView.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import SwiftUI
import Lottie

/// Vista representable de Lottie para SwiftUI
struct LottieView: UIViewRepresentable {
    let animationView: LottieAnimationView
    
    func makeUIView(context: Context) -> UIView {
        animationView.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: .zero)
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Aquí puedes actualizar la vista si es necesario
    }
}
