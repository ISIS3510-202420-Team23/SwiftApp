//
//  HomepageTestsView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct HomepageTestView: View {
    var body: some View{
        
        
        if #available(iOS 16.0, *) {
            NavigationStack {
                ScrollView {
                    VStack {
                        Heading()
                        SearchAndFilterBar()
                        LazyVStack (spacing: 32){
                            ForEach(0 ... 10, id: \.self) { listing in
                                NavigationLink(value: listing){
                                    OfferView()
                                        .frame(height: 330)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                }
                                
                            }
                        }
                        .padding()
                    }
                    .navigationDestination(for: Int.self) { listing in
                        Text("Offert detail view...")
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
#Preview {
    HomepageTestView()
}
