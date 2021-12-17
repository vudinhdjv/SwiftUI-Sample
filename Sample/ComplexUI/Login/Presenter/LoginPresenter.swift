//
//  LoginViewModel.swift
//  Sample
//
//  Created by Dinh Van Vu on 09/11/2021.
//

import Foundation
import SwiftUI

class LoginPresenter: ObservableObject {
    
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var alert: Bool = false
    @Published var isLogined: Bool = false
    @Published var message: String = ""
    
    func checkValid() -> Bool {
        return !username.isEmpty && !password.isEmpty
    }
    
    func reset() {
        username = ""
        password = ""
    }
    
    func login() {
        if username == "Admin" && password == "123" {
            alert = true
            isLogined = true
            message = "Login successful."
        } else {
            alert = true
            isLogined = false
            message = "Username or password is incorrect."
        }
    }
}
