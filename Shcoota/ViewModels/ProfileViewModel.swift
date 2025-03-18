//
//  ProfileViewModel.swift
//  Shcoota
//
//  Created by Mohammad Alam on 1/6/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewModel: ObservableObject {
    init(){
    }
    
    @Published var user: User? = nil
    @Published var fullname = ""
    
    func fetchUser(){
        guard let uId = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .getDocument { [weak self] snapshot, err in
                guard let data = snapshot?.data(), err  == nil else {
                    return
                }
                DispatchQueue.main.async {
                    let fetchedUser = User(id: data["id"] as? String ?? ""
                                      , fullName: data["fullName"] as? String ?? "",
                                      email: data["email"] as? String ?? "",
                                      joined: data["joined"] as? TimeInterval ?? 0)
                    self?.user = fetchedUser
                    self?.fullname = fetchedUser.fullName
                }
                
            }
    }
    
    func logOut(){
        do {
            try Auth.auth().signOut()
        }catch {
            print(error)
        }
    }
}
