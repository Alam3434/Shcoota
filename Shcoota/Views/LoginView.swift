//
//  LoginView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/6/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "Schoota", subtitle: "Lets Get Places!", angle: 15, background: .pink)
                Form {
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle()).padding(5)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    TLButtonView(title: "Log in", color: .blue){
                        viewModel.login()
                    }.padding(10)
                                        
                }.offset(y: -20)
                    .padding(10)
                    .cornerRadius(30)
                VStack{
                    Text("New Around Here?")
                    NavigationLink("Create Account", destination: RegisterView())
                }.padding(.bottom, 40)
                    .padding(.top, 10)
            }
                
        }
        
    }
}

#Preview {
    LoginView()
}
