//
//  LoginView.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var presenter: LoginPresenter
    
    var body: some View {
        ZStack {
            VStack {
                // Mostrar los campos de login cuando la animación se detiene
                    VStack {
                        TextField("Correo Electrónico", text: $presenter.email)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(5)
                            .padding(.bottom, 20)
                        
                        SecureField("Contraseña", text: $presenter.password)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(5)
                        
                        Button(action: {
                            presenter.login()
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
                    .transition(.move(edge: .bottom)) // Transición desde la parte inferior
                    .animation(.easeInOut, value: presenter.showLoginForm)               
                
            }
            
            // Menú Hamburguesa
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        withAnimation {
                            presenter.showMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.largeTitle)
                            .padding()
                    }
                    .padding(.top, 50)
                    
                    if presenter.showMenu {
                        MenuContentView()
                            .transition(.move(edge: .trailing))
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
