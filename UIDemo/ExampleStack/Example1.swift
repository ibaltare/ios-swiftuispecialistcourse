//
//  Example1.swift
//  UIDemo
//
//  Created by Nicolas on 09/05/23.
//

import SwiftUI

struct Example1: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top,50)
            Text("Body Text Here")
            
            Capsule()
                .frame(width: 400,height: 50)
                .padding(.horizontal, 20.0)
            
            Spacer()
            
            HStack {
                VStack{
                    Circle()
                        .frame(width: 50.0, height: 50.0)
                    Text("Placeholder")
                }
                VStack{
                    Circle()
                        .frame(width: 50.0, height: 50.0)
                    Text("Placeholder")
                }
                VStack{
                    Circle()
                        .frame(width: 50.0, height: 50.0)
                    Text("Placeholder")
                }
                VStack{
                    Circle()
                        .frame(width: 50.0, height: 50.0)
                    Text("Placeholder")
                }
            }
            
            
            Spacer()
            
            Capsule()
                .frame(width: 50.0, height: 10.0)
                //.padding(.top,50)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200.0)
                
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Example1_Previews: PreviewProvider {
    static var previews: some View {
        Example1()
    }
}
