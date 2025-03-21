//
//  LoginViewModel.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/6/24.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard validate() else{
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    private func validate() -> Bool{
        guard !(email.trimmingCharacters(in: .whitespaces)).isEmpty,
              !(password.trimmingCharacters(in: .whitespaces)).isEmpty else {
                errorMessage = "Please fill in all fields."
                  return false
              }
        guard email.contains(".") && email.contains("@") else {
            errorMessage = "Please enter valid email address."
            return false
        }
        return true
    }
}
