//
//  Example3.swift
//  UIDemo
//
//  Created by Nicolas on 10/05/23.
//

import SwiftUI

struct Example3: View {
    var body: some View {
        ZStack {
            Color.secondary
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 20) {
                Text("Title")
                    .font(.largeTitle)
                HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary)
                Text("Sub Text")
                    .font(.title)
                HStack(spacing: 20){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                .frame(height: 100)
            }
            .padding(.horizontal)
        }
    }
}

struct Example3_Previews: PreviewProvider {
    static var previews: some View {
        Example3()
    }
}
