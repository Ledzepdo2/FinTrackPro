//
//  LaunchView.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 25/09/24.
//

import SwiftUI

/// Vista principal de lanzamiento
struct LaunchView: View {
    @StateObject private var viewModel: LaunchViewModel
    private let animation: AnimationPlayable
    
    init(animation: AnimationPlayable) {
        self.animation = animation
        _viewModel = StateObject(wrappedValue: LaunchViewModel(animation: animation))
    }
    
    var body: some View {
        VStack {
            // Vista de animación
            LottieView(animationView: animation.animationView)
                .frame(width: 200, height: 200)
                .onAppear {
                    viewModel.startAnimation()
                    viewModel.animateOpacity()
                }
            
            // Nombre de la aplicación o cualquier texto
            Text("FinTrackPro")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding(.top, 20)
                .opacity(viewModel.opacity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}
