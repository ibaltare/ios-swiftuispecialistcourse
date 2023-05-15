//
//  Login.swift
//  UIDemo
//
//  Created by Nicolas on 13/05/23.
//

import SwiftUI

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
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

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Login()
                .preferredColorScheme(.dark)
            
            Login()
                .previewDevice("iPhone 8")
        }
    }
}
