//
//  HomepageView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 15/09/24.
//

import SwiftUI

struct HomepageView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            // Título y saludo
            HStack {
                VStack(alignment: .leading) {
                    Text("Welcome,")
                        .font(.largeTitle)
                        .foregroundColor(Color(hex: "0C356A"))
                        .fontWeight(.bold)
                    Text("Daniel")
                        .font(.largeTitle)
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
            
            // Barra de búsqueda
            HStack {
                TextField("", text: $searchText)
                    .padding(9)
                    .background(Color(hex: "C5DDFF"))

                    .cornerRadius(10)
                    .overlay(
                        HStack {
                            if searchText.isEmpty {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color(hex: "0C356A"))
                                    .padding(.leading, 8)
                            }
                            Spacer()
                            Image(systemName: "line.horizontal.3")
                                .foregroundColor(Color(hex: "0C356A"))
                                .padding(.trailing, 8)
                        }
                    )
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            // Lista de propiedades
            ScrollView {
                VStack(spacing: 15) {
                    PropertyCardView(imageName: "property1", title: "Apartment - T2 - 1102", location: "Ac. 19 #2a - 10, Bogotá", price: "$1.500.000,00", beds: 4, baths: 1)
                    PropertyCardView(imageName: "property2", title: "Apartment - T3 - 2003", location: "Ac. 18 #3b - 11, Bogotá", price: "$2.000.000,00", beds: 3, baths: 2)
                }
                .padding(.horizontal)
            }
            
            Spacer()
            
            // Botón Explore en la barra inferior
            HStack {
                            Spacer()
                            Button(action: {
                                // Acción del botón
                            }) {
                                VStack {
                                    Image(systemName: "location.fill")
                                        .foregroundColor(Color(hex: "0C356A"))
                                    Text("Explore")
                                        .foregroundColor(Color(hex: "0C356A"))
                                }
                                .padding()
                            }
                            .background(Color.white)
                            .cornerRadius(20)
                            Spacer()
                        }
            .padding(.horizontal)
            .padding(.bottom, 5)
        }
    }
}

struct PropertyCardView: View {
    var imageName: String
    var title: String
    var location: String
    var price: String
    var beds: Int
    var baths: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            // Imagen de la propiedad
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
                .cornerRadius(15)
            
            // Información de la propiedad
            Text(title)
                .font(.headline)
                .padding(.top, 5)
            HStack {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(Color(hex: "000000"))
                Text(location)
                    .font(.subheadline)
                    .foregroundColor(Color(hex: "000000"))
            }
            .foregroundColor(.gray)
            
            HStack {
                Text("\(beds) 🛏 ")
                    .foregroundColor(Color(hex: "000000"))
                Text("|")
                        .foregroundColor(Color(hex: "000000"))
                Text("\(baths) 🛁")
                    .foregroundColor(Color(hex: "000000"))
                Spacer() // Este Spacer empuja el precio hacia la derecha
                Text(price)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "0oooo"))
            }
            .foregroundColor(.black)
            .padding(.top, 5)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
