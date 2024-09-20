//
//  HomepageTestsView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct OfferView: View {
//    var images = []
    
    var body: some View{
        VStack(spacing: 8){
//            images
            OfferImageCarouselView()
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .tabViewStyle(.page)
//            listing details
            
            VStack(alignment: .leading) {
                
                // Información de la propiedad
                Text("Apartment - T2 - 1102")
                    .font(.headline)
                    .padding(.top, 5)
                    .foregroundStyle(.black)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(Color(hex: "000000"))
                    Text("Ac. 19 #2a - 10, Bogotá")
                        .font(.subheadline)
                        .foregroundColor(Color(hex: "000000"))
                }
                .foregroundColor(.gray)
                
               
                
                HStack {
                    Text("\(4) 🛏 ")
                        .foregroundColor(Color(hex: "000000"))
                    Text("|")
                            .foregroundColor(Color(hex: "000000"))
                    Text("\(1) 🛁")
                        .foregroundColor(Color(hex: "000000"))
                    Spacer() // Este Spacer empuja el precio hacia la derecha
                    Text("$1.500.000,00")
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "000000"))
                }
                .foregroundColor(.black)
                
               
            }
            .padding(.horizontal, 8)
            
        }
        .padding()
    }
}
#Preview {
    OfferView()
}
