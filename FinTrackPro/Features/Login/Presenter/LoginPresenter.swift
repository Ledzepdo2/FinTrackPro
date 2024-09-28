//
//  LoginPresenter.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import Foundation
import Combine

class LoginPresenter: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showLoginForm: Bool = false
    @Published var showMenu: Bool = false
    
    private let interactor: LoginInteractor
    private let router: LoginRouter
    
    init(interactor: LoginInteractor, router: LoginRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    func login() {
        interactor.saveUser(email: email, password: password)
        print("Datos guardados en Keychain")
    }
}
