//
//  Example2.swift
//  UIDemo
//
//  Created by Nicolas on 10/05/23.
//

import SwiftUI

struct Example2: View {
    var body: some View {
        ZStack {
            Color.pink
                .edgesIgnoringSafeArea(.all) // only back color ignore safe area
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        //.edgesIgnoringSafeArea(.all)//ignore all secreen safe Aea
    }
}

struct Example2_Previews: PreviewProvider {
    static var previews: some View {
        Example2()
    }
}
