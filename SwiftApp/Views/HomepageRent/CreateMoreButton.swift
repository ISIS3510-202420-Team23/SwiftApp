//
//  Heading.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct CreateMoreButton: View {
    var body: some View {
        HStack {
                Text("Your listings")
                    .font(.custom("LeagueSpartan-Regular", size: 32))
                    .foregroundColor(Color(hex: "0C356A"))
                    .fontWeight(.bold)
            Spacer()
            // Imagen de perfil
            Button {
                
            } label:{
                Text("+ Create more")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .frame(width: 140, height:50)
                    .background(Color(hex: "0C356A"))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
            }
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}

#Preview {
    CreateMoreButton()
}
