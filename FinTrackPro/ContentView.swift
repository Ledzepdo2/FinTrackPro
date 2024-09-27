//
//  ContentView.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 22/09/24.
//

import SwiftUI
import SwiftData

@available(iOS 17.0, *)
struct ContentView: View {
    // Variable que controla si estamos en la pantalla de inicio o en el launcher
    @State private var isActive = false

    var body: some View {
        VStack {
            if isActive {
                // Si `isActive` es true, mostramos la pantalla de inicio de sesión
                LoginView()
            } else {
                // Si `isActive` es false, mostramos la pantalla del launcher
                LaunchView(animation: LottieAnimation(filename: "LaunchView"))
            }
        }
        .onAppear {
            // Después de 3 segundos, cambiamos a la pantalla de login
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
