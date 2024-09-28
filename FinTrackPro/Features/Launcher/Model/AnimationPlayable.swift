//
//  AnimationPlayable.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import Foundation
import Lottie

/// Protocolo que define las funcionalidades básicas de una animación
protocol AnimationPlayable {
    func play()
    var animationView: LottieAnimationView { get }
}
