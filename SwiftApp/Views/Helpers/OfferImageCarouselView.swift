//
//  OfferDetailView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct OfferImageCarouselView: View {
//    var images =[]
    var body: some View {
            TabView {
                ForEach(0 ... 3, id: \.self) { image in
                    Rectangle()
//                    Image (image)
//                        .resizable()
//                        .scaledToFill()
                }
            }
            .tabViewStyle(.page)
        
    }
}

#Preview{
    OfferImageCarouselView()
}
