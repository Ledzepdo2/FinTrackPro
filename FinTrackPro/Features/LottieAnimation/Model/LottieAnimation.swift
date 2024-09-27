//
//  LottieAnimation.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import Lottie
import Combine

/// Protocolo para la configuración de animaciones
protocol AnimationConfigurable {
    func configureAnimation()
}

/// Implementación concreta de una animación Lottie
class LottieAnimation: AnimationPlayable, AnimationConfigurable, ObservableObject {
    let animationView: LottieAnimationView
    
    init(filename: String) {
        self.animationView = LottieAnimationView(name: filename)
        configureAnimation()
    }
    
    func configureAnimation() {
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        animationView.animationSpeed = 1.0
    }
    
    func play() {
        animationView.play()
    }
}
