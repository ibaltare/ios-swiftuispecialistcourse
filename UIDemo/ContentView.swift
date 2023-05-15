//
//  ContentView.swift
//  UIDemo
//
//  Created by Nicolas on 09/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello world!")
                .font(Font.custom("Avenir Next", size: 44))
                //.font(Font.system(.largeTitle, design: .serif))
                //.font(Font.largeTitle)
                //.fontWeight(.heavy)
            Capsule()// buttons
            Ellipse()
            Circle()
                .inset(by: 20)
            RoundedRectangle(cornerRadius: 20)
                //.stroke()
                //.stroke(Color.indigo, lineWidth: 10)
                .strokeBorder(Color.purple, lineWidth: 20)
            Rectangle()
                .fill(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
