//
//  RegisterView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/6/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerViewModel = RegisterViewModel()
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Welcome", angle: -15, background: .yellow)
            Form {
                TextField("Full Name", text: $registerViewModel.fullName)
                    .textFieldStyle(DefaultTextFieldStyle()).padding(5)
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                TextField("Email Address", text: $registerViewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle()).padding(5)
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text: $registerViewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                TLButtonView(title: "Create Account", color: .green){
                    registerViewModel.register()
                }.padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }.offset(y: -55)
            

        }.offset(y: -35)
    }
}

#Preview {
    RegisterView()
}
