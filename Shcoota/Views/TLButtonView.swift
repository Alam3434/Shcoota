//
//  TLButtonView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/6/24.
//

import SwiftUI

struct TLButtonView: View {
    let title: String
    let color: Color
    let action: ()-> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius:  10).foregroundColor(color)
                Text(title).foregroundColor(.white).bold()
            }.padding(.top, 10)
        })
    }
}

#Preview {
    TLButtonView(title: "Chow", color: .pink ) { }
}
