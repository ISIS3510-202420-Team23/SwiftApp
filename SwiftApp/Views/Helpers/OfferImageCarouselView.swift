//
//  OfferDetailView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 16/09/24.
//

import SwiftUI

struct OfferImageCarouselView: View {
   var images = [
    "cityu-1",
    "cityu-2"
   ]
    var body: some View {
            TabView {
                ForEach(images, id: \.self) { image in
                    
                    Image (image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page)
        
    }
}

#Preview{
    OfferImageCarouselView()
}
