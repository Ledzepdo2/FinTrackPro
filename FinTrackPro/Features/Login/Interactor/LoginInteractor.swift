//
//  LoginInteractor.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import Foundation

class LoginInteractor {
    private let keychainHelper = KeychainHelper.shared
    
    func saveUser(email: String, password: String) {
        keychainHelper.save(key: "userEmail", value: email)
        keychainHelper.save(key: "userPassword", value: password)
    }
    
    func getUser() -> User? {
        if let email = keychainHelper.get(key: "userEmail"),
           let password = keychainHelper.get(key: "userPassword") {
            return User(email: email, password: password)
        }
        return nil
    }
}
