//
//  LaunchViewModel.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import SwiftUI
import Combine

/// ViewModel para manejar la lógica de la LaunchView
class LaunchViewModel: ObservableObject {
    @Published var opacity: Double = 0.0
    private let animation: AnimationPlayable
    
    init(animation: AnimationPlayable) {
        self.animation = animation
    }
    
    /// Inicia la reproducción de la animación
    func startAnimation() {
        animation.play()
    }
    
    /// Anima la opacidad del texto
    func animateOpacity() {
        withAnimation(.easeInOut(duration: 1.5).delay(0.5)) {
            self.opacity = 1.0
        }
    }
}
