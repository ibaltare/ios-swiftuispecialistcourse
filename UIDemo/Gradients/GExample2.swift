//
//  GExample2.swift
//  UIDemo
//
//  Created by Nicolas on 15/05/23.
//

import SwiftUI

struct GExample2: View {
    var body: some View {
        ZStack {
            BackgroundRadialGradient()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct GExample2_Previews: PreviewProvider {
    static var previews: some View {
        GExample2()
    }
}

struct BackgroundRadialGradient: View {
    var body: some View {
        RadialGradient(gradient: Gradient(colors: [Color.themeBackground, Color.themeBackground2]),
                       center: .top,
                       startRadius: 10,
                       endRadius: 400)
        .edgesIgnoringSafeArea(.all)
    }
}
