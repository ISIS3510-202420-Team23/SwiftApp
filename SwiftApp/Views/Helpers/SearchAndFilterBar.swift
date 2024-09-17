//
//  SearchAndFilterBar.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View{
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color(hex: "0C356A"))
            
            VStack(alignment: .leading, spacing: 2){
                Text ("Any Date - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer ()
            
            Button(action: {}, label: {
                Image (systemName: "line.horizontal.3")
                    .foregroundStyle(Color(hex: "0C356A"))
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 11)
        .background(Color(hex: "C5DDFF"))
        .cornerRadius(10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0)
               
        }
        .padding(.top, 4)
        .padding(.horizontal)
        .padding(.bottom)
        
    }
}
#Preview {
    SearchAndFilterBar()
}
