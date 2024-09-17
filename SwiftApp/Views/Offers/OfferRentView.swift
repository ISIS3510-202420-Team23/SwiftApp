//
//  HomepageTestsView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 17/09/24.
//

import SwiftUI

struct OfferRentView: View {
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
                
                HStack {
                    // Views and bookmarks
                    Text("15 views")
                        .font(.subheadline)
                        .foregroundColor(.black)
                    
                    Text("•")
                        .font(.subheadline)
                        .foregroundColor(.black)
                    
                    Text("2 bookmarks")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        
                    
                    Spacer()
                    
                    // Sold status
                    HStack(spacing: 4) {
                        Circle()
                            .stroke(lineWidth: 1)
                            .frame(width: 16, height: 16)
                            .foregroundColor(.black)
                        
                        Text("Sold")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                }
                .padding(.top, -5)
                
               
            }
            .padding(.horizontal, 8)
            
        }
        .padding()
    }
}
#Preview {
    OfferRentView()
}
