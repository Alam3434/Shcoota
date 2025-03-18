//
//  ContentView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/5/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
            TabView {
                MapView()
                    .tabItem {
                        Label("Map", systemImage: "map")  // Changed to map icon for clarity
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
            .onAppear {
                print("TabView appeared with user: \(viewModel.currentUserId)")  // Debug print
            }
        } else {
            LoginView()
                .onAppear {
                    print("LoginView appeared - signed in: \(viewModel.isSignedIn)")  // Debug print
                }
        }
    }
}

#Preview {
    MainView()
}

