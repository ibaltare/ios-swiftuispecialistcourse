//
//  Login2.swift
//  UIDemo
//
//  Created by Nicolas on 14/05/23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.medium)
            .foregroundColor(.red)
            .padding(.bottom)
    }
}

struct Login2: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack {
            
            background
            
            VStack(spacing: 20.0) {
                
                titleText
                
                logo
                
                titleText(text: "sub title")
                Text("text modifier")
                    .modifier(TitleModifier())
                
                Spacer()
                
                LoginTextfields(username: $username, password: $password)
                
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
    
    private var background: some View {
        Color.themeBackground
            .edgesIgnoringSafeArea(.all)
    }
    
    private var titleText: some View {
        Text("Login Screen 1")
            .font(.largeTitle)
            .fontWeight(.medium)
            .foregroundColor(Color.themeForeground)
            .padding(.bottom)
    }
    
    private func titleText(text:String) -> some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.medium)
            .foregroundColor(Color.themeForeground)
            .padding(.bottom)
    }
    
    private var logo: some View {
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
        
    }
}

struct Login2_Previews: PreviewProvider {
    static var previews: some View {
        Login2()
    }
}

struct LoginTextfields: View {
    @Binding var username: String
    @Binding var password: String
    
    var body: some View {
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
    }
}
