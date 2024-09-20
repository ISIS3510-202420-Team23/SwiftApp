//
//  WelcomeIndividualPageView.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 16/09/24.
//

import SwiftUI

struct WelcomeIndividualPageView: View {
    @Binding var pageIndex: Int
    @State private var showNextButton = true
    var totalPages: Int
    var page: Page
    var body: some View {
        ZStack() {
            Color(hex: "#C5DDFF")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Spacer()
                
                Image("\(page.imageUrl)")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .cornerRadius(30)
                    .padding()
                
                Spacer()
                
                HStack{
                    CustomIndicatorView(totalPages: totalPages, currentPage: 0)
                    
                    Spacer()
                    CircularArrowButton()
                        .onTapGesture {
                            if pageIndex < totalPages - 1{
                                pageIndex = pageIndex + 1
                            }
                        }
                }
                .padding(.bottom, 40)
                .padding(.trailing, 20)
                .padding(.leading, 40)
            }
        }
    }
}

#Preview {
    WelcomePageView()
}
