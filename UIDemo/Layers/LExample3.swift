//
//  LExample3.swift
//  UIDemo
//
//  Created by Nicolas on 11/05/23.
//

import SwiftUI

struct LExample3: View {
    var body: some View {
        VStack {
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
            
            ExtractedView()
            
            ExtractedView()
        }
        
    }
}

struct LExample3_Previews: PreviewProvider {
    static var previews: some View {
        LExample3()
    }
}
