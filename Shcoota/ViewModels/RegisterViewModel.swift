//
//  RegisterViewModel.swift
//  Shcoota
//
//  Created by Mohammad Alam on 1/6/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseAuth




class RegisterViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register(){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else{
                return
            }
            print("are we in register?")
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id:String){
        let newUser = User(id: id, fullName: fullName, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        if let userId = Auth.auth().currentUser?.uid {
            print("✅ User is authenticated with UID: \(userId)")
        } else {
            print("❌ User is NOT authenticated")
        }
        

        
        db.collection("users").document(id).setData(newUser.asDictionary()) { error in
            if let error = error {
                print("❌ Firestore write error: \(error.localizedDescription)")
            } else {
                print("✅ Successfully inserted user record in Firestore")
            }
        }
        
    }
    
    private func validate()-> Bool{
        guard !fullName.trimmingCharacters(in: .whitespaces).isEmpty &&
                !email.trimmingCharacters(in: .whitespaces).isEmpty &&
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                    return false
                }
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        guard password.count >= 6 else{
            return false
        }
        return true
                
    }
}
