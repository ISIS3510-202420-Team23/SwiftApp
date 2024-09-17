//
//  Heading.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct Heading: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Welcome,")
                    .font(.custom("LeagueSpartan-Regular", size: 32))
                    .foregroundColor(Color(hex: "0C356A"))
                    .fontWeight(.bold)
                Text("Daniel")
                    .font(.custom("LeagueSpartan-Regular", size: 32))
                    .foregroundColor(Color(hex: "FFB900"))
                    .fontWeight(.bold)
            }
            Spacer()
            
            // Imagen de perfil
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 67, height: 67)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        .padding(.horizontal)
        .padding(.bottom, 3)
    }
}

#Preview {
    Heading()
}
