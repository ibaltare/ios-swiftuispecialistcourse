//
//  Onboarding1.swift
//  UIDemo
//
//  Created by Nicolas on 13/05/23.
//

import SwiftUI

struct Onboarding1: View {
    var body: some View {
        ZStack {
            Color.themeSecondary
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 60.0) {
                
                Image("onboarding1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200.0, height: 200.0)
                    .padding(.top)
                
                Spacer()
                
                Text("Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos ")
                
                Spacer()
                
                Button {
                } label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .padding(20)
                        .background(Circle())
                }
                .padding()
                .background(
                    Circle()
                        .trim(from: 0, to: 0.33)
                        .stroke(Color.themeAccent, lineWidth: 4)
                        .rotationEffect(.degrees(-90))
                )
            }
            .padding()
        .accentColor(.themeAccent)
        }
        
    }
}

struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1()
    }
}
