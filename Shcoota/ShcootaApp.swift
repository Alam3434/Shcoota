//
//  ShcootaApp.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/5/24.
//

import SwiftUI
import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?
                         = nil) -> Bool {
         FirebaseApp.configure()
        return true
    }
}

@main
struct ShcootaApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
