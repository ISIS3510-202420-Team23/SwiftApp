//
//  HomepageTestsView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 17/09/24.
//

import SwiftUI

struct HomepageRentView: View {
    @State private var showFilterSearchView = false
    var body: some View{
        
        
        if #available(iOS 16.0, *) {
            NavigationStack {
                if showFilterSearchView{
                    FilterSearchView(show: $showFilterSearchView)
                } else {
                    ScrollView {
                        VStack {
                            Heading()
//                            SearchAndFilterBar()
//                            
//                                .onTapGesture {
//                                    withAnimation(.snappy){
//                                        showFilterSearchView.toggle()
//                                    }
//                                }
                            CreateMoreButton()
                            LazyVStack (spacing: 32){
                                ForEach(0 ... 10, id: \.self) { listing in
                                    NavigationLink(value: listing){
                                        OfferRentView()
                                            .frame(height: 360)
                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                    }
                                    
                                }
                            }
                            .padding()
                        }
                        //                    .navigationDestination(for: Int.self) { listing in
                        //                        OfferDetailView()
                        //                            .navigationBarBackButtonHidden()
                        //                    }
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
#Preview {
    HomepageRentView()
}
