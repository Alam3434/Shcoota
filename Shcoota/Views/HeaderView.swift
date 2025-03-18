//
//  HeaderView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 11/6/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                    Text(subtitle)
                        .font(.system(size: 30))
                }.foregroundColor(.white)
                    .padding(.top, 25)
            }.frame(width: UIScreen.main.bounds.width*3, height: 300)
                .offset(y : -100)
                        
        }
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .pink)
}
