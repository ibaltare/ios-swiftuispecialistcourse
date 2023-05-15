//
//  LExample2.swift
//  UIDemo
//
//  Created by Nicolas on 11/05/23.
//

import SwiftUI

struct LExample2: View {
    var body: some View {
        VStack{
            Text("Tiles -1")
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 1"))
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 2"))
            }
            .frame(height: 200.0)
            
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 3"))
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                    .overlay(Text("Tile 4"))
            }
            .frame(height: 200.0)
        }
        .padding()
    }
}

struct LExample2_Previews: PreviewProvider {
    static var previews: some View {
        LExample2()
    }
}
