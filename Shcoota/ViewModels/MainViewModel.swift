//
//  MainViewModel.swift
//  Shcoota
//
//  Created by Mohammad Alam on 1/6/25.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    
    @Published var currentUserId: String = ""
    @Published var isSignedIn = false
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        setupAuthListener()
    }
    
    private func setupAuthListener() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
                self?.isSignedIn = user != nil
                print("Auth state changed - User: \(user?.uid ?? "none")")
            }
        }
    }
    
    deinit {
        if let handler = handler {
            Auth.auth().removeStateDidChangeListener(handler)
        }
    }
}
