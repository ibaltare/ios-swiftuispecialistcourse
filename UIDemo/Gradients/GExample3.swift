//
//  GExample3.swift
//  UIDemo
//
//  Created by Nicolas on 15/05/23.
//

import SwiftUI

struct GExample3: View {
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.themeSecondary, Color.themeTertiary]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    let radialGradient = RadialGradient(gradient: Gradient(colors: [Color.themeAccent, Color.themeBackground2]),
                                        center: .center,
                                        startRadius: 5,
                                        endRadius: 100)
    
    var body: some View {
        ZStack {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(linearGradient)
                        .overlay(Text("Tile 3"))
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                        .overlay(Text("Tile 4"))
                }
                .frame(height: 200.0)
                
                Spacer()
                
                Button {
                } label: {
                    Text("Ok")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            Capsule()
                                .fill(radialGradient)
                                .frame(width: 200.0)
                        )
                }

            }
            .padding()
        }
    }
}

struct GExample3_Previews: PreviewProvider {
    static var previews: some View {
        GExample3()
    }
}
