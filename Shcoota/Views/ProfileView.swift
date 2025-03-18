//
//  ProfileView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 1/6/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
            VStack {
                if viewModel.fullname.isEmpty {
                    ProgressView("Loading...")
                } else {
                    Text("Welcome, \(viewModel.fullname)!")
                        .font(.title)
                        .bold()
                    
                    Button("Log Out") {
                        viewModel.logOut()
                    }
                    .foregroundColor(.red)
                    .padding()
                }
            }
            .onAppear {
                viewModel.fetchUser()
            }
        }
    }

#Preview {
    ProfileView()
}

