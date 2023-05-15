//
//  GExample1.swift
//  UIDemo
//
//  Created by Nicolas on 14/05/23.
//

import SwiftUI

struct GExample1: View {
    @State private var username = ""
    @State private var password = ""
    
    let gradientColors = Gradient(stops: [Gradient.Stop(color: Color.themeBackground, location: 0.75), Gradient.Stop(color: Color.themeBackground2, location: 1)])
    
    let radialGradient = RadialGradient(gradient: Gradient(colors: [Color.themeBackground, Color.themeBackground2]),
                                        center: .top,
                                        startRadius: 10,
                                        endRadius: 400)
    
    var body: some View {
        ZStack {
            
            /*LinearGradient(gradient: Gradient(colors: [Color.themeBackground, Color.themeBackground2]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            */
            
            /*LinearGradient(gradient: Gradient(colors: [Color.themeBackground, Color.themeBackground2]),
                           startPoint: UnitPoint(x: 0, y: 0.25),
                           endPoint: UnitPoint(x: 1, y: 0.75))
                .edgesIgnoringSafeArea(.all)
             */
            
            /*LinearGradient(gradient: gradientColors,
                           startPoint: UnitPoint(x: 0, y: 0.25),
                           endPoint: UnitPoint(x: 1, y: 0.75))
                .edgesIgnoringSafeArea(.all)*/
            
            radialGradient.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20.0) {
                Text("Login Screen 1")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.themeForeground)
                    .padding(.bottom)
                
                HStack {
                    VStack {
                        Rectangle()
                            .frame(width: 30.0, height: 30.0)
                        Rectangle()
                            .frame(width: 30.0, height: 30.0)
                    }
                    VStack {
                        Rectangle()
                            .frame(width: 30.0, height: 30.0)
                        Rectangle()
                            .frame(width: 30.0, height: 30.0)
                    }
                }
                .rotationEffect(.degrees(45))
                .foregroundColor(Color.themeForeground)
                
                Spacer()
                
                Group {
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.themeSecondary)
                            .frame(width: 20.0)
                        TextField("Username", text: $username)
                    }
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                            .opacity(0.5)
                    )
                    
                    HStack {
                        Image(systemName: "lock.shield.fill")
                            .foregroundColor(.themeSecondary)
                            .frame(width: 20.0)
                        SecureField("Password", text: $password)
                    }
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                            .opacity(0.5)
                    )
                }
                .frame(maxWidth: 400.0)
                
                Spacer()
                
                Button {
                } label: {
                    Text("Button")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150)
                        .background(Capsule())
                }
                
                Button {
                } label: {
                    Text("Forget Password")
                }

                
            }
            .padding(.horizontal)
        .padding(.bottom)
        }
        .accentColor(.themeAccent)
    }
}

struct GExample1_Previews: PreviewProvider {
    static var previews: some View {
        GExample1()
            //.preferredColorScheme(.dark)
    }
}
