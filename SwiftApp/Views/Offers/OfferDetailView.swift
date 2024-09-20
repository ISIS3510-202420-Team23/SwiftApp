//
//  HomepageTestsView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 17/09/24.
//

import SwiftUI

struct OfferDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var showContactDetails = false
    var body: some View {
        if #available(iOS 16.0, *) {
            ScrollView{
                ZStack (alignment: .topLeading){
                    OfferImageCarouselView()
                        .frame(height: 370)
                        .tabViewStyle(.page)
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color(hex: "FFF4CF"))
                            .background{
                                Circle()
                                    .fill(Color(hex: "0C356A"))
                                    .frame(width: 40, height: 40)
                            }
                            .padding(32)
                            .padding(.top, 30)
                    }
                    
                }
                
                VStack(alignment: .leading, spacing: 8){
                    Text("Apartment - T2 - 1102")
                        .font(.custom("LeagueSpartan-SemiBold", size: 28))
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color(hex: "000000"))
                        Text("Ac. 19 #2a - 10, Bogotá")
                            .font(.custom("LeagueSpartan-ExtraLight", size: 17))
                            .foregroundColor(Color(hex: "000000"))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.leading)
                .padding(.top)
                .padding(.bottom, 5)
                
                
                VStack(alignment: .leading, spacing: 8){
                    Text ("Facilities")
                        .font(.custom("LeagueSpartan-SemiBold", size: 22))
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 16) {
                            VStack{
                                Image(systemName: "bed.double")
                                Text("4 Bedroom")
                                    .font(.custom("LeagueSpartan-Regular", size: 19))
                            }
                            .frame(width: 130, height: 80)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(Color(hex: "CFCFCF"))
                            }
                            
                            VStack {
                                Image(systemName: "shower")
                                Text("1 Bathroom")
                                    .font(.custom("LeagueSpartan-Regular", size: 19))
                            }
                            .frame(width: 132, height: 85)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(Color(hex: "CFCFCF"))
                            }
                            
                            VStack {
                                Image(systemName: "person.2")
                                Text("3 Roommates")
                                    .font(.custom("LeagueSpartan-Regular", size: 19))
                            }
                            .frame(width: 132, height: 85)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(Color(hex: "CFCFCF"))
                            }
                        }
                        
                    }
                }
                .padding(.leading)
                .padding(.top, 7)
                
                VStack (alignment: .leading) {
                    Text("Description")
                        .font(.custom("LeagueSpartan-SemiBold", size: 22))
                        .frame(width: 250, alignment: .leading )
                    
                    Text ("This spacious apartment in City U is shared with three other tenants and offers access to top-tier amenities, including a gym and study rooms. Enjoy modern living in a vibrant community with everything you need just steps away.")
                        .font(.custom("LeagueSpartan-Light", size: 17))
                        .padding(.top, 1)

                }
                .padding(.top)
                .padding(.leading)
            }
            .toolbar(.hidden, for: .tabBar)
            .ignoresSafeArea()
            .padding(.bottom, 64)
            .overlay(alignment: .bottom){
                VStack (spacing: 0) {
                    Divider ()
                        .padding(.bottom)
                    
                    HStack {
                        
                        Image("pau")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        
                        VStack (alignment: .leading)
                        {
                            Text ("Paula Daza")
                                .font(.custom("LeagueSpartan-SemiBold", size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hex: "0C356A"))
                            Text ("Property agent")
                                .font(.custom("LeagueSpartan-SemiBold", size: 18))
                                .foregroundColor(Color(hex: "3D4D62"))
                            Text ("$ 1.500.000,00")
                                .font(.custom("LeagueSpartan-Regular", size: 18))
                                .padding(.top, 4)
                        
                        }
                        Spacer ()
                        
                        Button {
                            withAnimation {
                                    showContactDetails.toggle()
                                                        }
                        } label:{
                            Text("Contact")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .frame(width: 140, height:50)
                                .background(Color(hex: "0C356A"))
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                            
                        }
                        
                    }
                    .padding(.horizontal,18)
                    VStack {
                            if showContactDetails {
                                Text("Email: paula.daza@example.com")
                                    .font(.custom("LeagueSpartan-Regular", size: 18))
                                    .padding(.top, 15)
                                    .padding(.horizontal, 18)
                                    
                            }
                            
                        }

                        .transition(.move(edge: .bottom))
              }
                .background(Color(hex: "FFF4CF"))
           
                    
                    .frame(maxHeight: showContactDetails ? nil : 50)
                  
                    

            }
        } else {
   
        }
        
    }
}

#Preview{
    OfferDetailView()
}
