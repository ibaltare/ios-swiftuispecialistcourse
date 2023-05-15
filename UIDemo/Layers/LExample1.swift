//
//  LExample1.swift
//  UIDemo
//
//  Created by Nicolas on 11/05/23.
//

import SwiftUI

struct LExample1: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(50)
            .background(Color.blue)
            .overlay(
                Rectangle()
                    .fill(Color.secondary)
                    .frame(height: 40)
                    .overlay {
                        Text("Hello")
                    }
                , alignment: .bottom
            )
    }
}

struct LExample1_Previews: PreviewProvider {
    static var previews: some View {
        LExample1()
    }
}
