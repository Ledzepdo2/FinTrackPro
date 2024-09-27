//
//  LoginView.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Iniciar Sesión")
                .font(.largeTitle)
                .padding()
            
            TextField("Correo Electrónico", text: $email)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5)
                .padding(.bottom, 20)
            
            SecureField("Contraseña", text: $password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5)
            
            Button(action: {
                // Acción de inicio de sesión
            }) {
                Text("Ingresar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(5)
            }
            .padding(.top, 20)
        }
        .padding()
    }
}
