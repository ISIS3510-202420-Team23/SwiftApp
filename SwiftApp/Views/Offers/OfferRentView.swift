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
                    .font(.custom("LeagueSpartan-SemiBold", size: 16))
                    .padding(.top, 5)
                    .foregroundStyle(.black)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(Color(hex: "000000"))
                    Text("Ac. 19 #2a - 10, Bogotá")
                        .font(.custom("LeagueSpartan-ExtraLight", size: 16))
                        .foregroundColor(Color(hex: "000000"))
                }
                .foregroundColor(.gray)
                
               
                
                HStack {
                    Text("\(4) 🛏 ")
                        .foregroundColor(Color(hex: "000000"))
                        .font(.custom("LeagueSpartan-SemiBold", size: 16))
                    Text("|")
                        .font(.custom("LeagueSpartan-SemiBold", size: 16))
                            .foregroundColor(Color(hex: "000000"))
                    Text("\(1) 🛁")
                        .font(.custom("LeagueSpartan-SemiBold", size: 16))
                        .foregroundColor(Color(hex: "000000"))
                    Spacer() // Este Spacer empuja el precio hacia la derecha
                    Text("$1.500.000,00")
                        .font(.custom("LeagueSpartan-SemiBold", size: 17))
                        .foregroundColor(Color(hex: "000000"))
                }
                .foregroundColor(.black)
                
                HStack {
                    // Views and bookmarks
                    Text("15 views")
                        .font(.custom("LeagueSpartan-Light", size: 16))

                        .foregroundColor(.black)
                    
                    Text("•")
                        .font(.custom("LeagueSpartan-Light", size: 16))
                        .foregroundColor(.black)
                    
                    Text("2 bookmarks")
                        .font(.custom("LeagueSpartan-Light", size: 16))
                        .foregroundColor(.black)
                        
                    
                    Spacer()
                    
                    // Sold status
                    HStack(spacing: 4) {
                        Circle()
                            .stroke(lineWidth: 1)
                            .frame(width: 16, height: 16)
                            .foregroundColor(.black)
                        
                        Text("Sold")
                            .font(.custom("LeagueSpartan-Medium", size: 16))
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
