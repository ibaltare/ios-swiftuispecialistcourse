//
//  Onboarding3.swift
//  UIDemo
//
//  Created by Nicolas on 14/05/23.
//

import SwiftUI

struct Onboarding3: View {
    var body: some View {
        VStack(spacing: 60.0) {
            Image("onboarding3")
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
                    .stroke(Color.themeAccent, lineWidth: 4)
            )
        }
        .padding()
    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
