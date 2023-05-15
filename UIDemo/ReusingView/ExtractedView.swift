//
//  ExtractedView.swift
//  UIDemo
//
//  Created by Nicolas on 14/05/23.
//

import SwiftUI

struct ExtractedView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Sub text")
                    .font(.caption)
            }
            Circle()
                .fill(Color.secondary)
                .frame(width: 40.0, height: 40.0)
        }
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.secondary))
    }
}

struct ExtractedView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView()
    }
}
