//
//  CustomIndicatorView.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 18/09/24.
//

import SwiftUI

struct CustomIndicatorView: View {
    // View properties
    var totalPages: Int
    var currentPage: Int
    var activeTint = "#0C356A"
    var InActiveTint = "#FFCB42"
    var body: some View {
        HStack(spacing: 8){
            ForEach(0..<totalPages, id: \.self){
                Circle()
                    .fill(currentPage == $0 ? Color(hex: activeTint) as Color : Color(hex: InActiveTint) as Color)
                    .frame(width: 10, height: 10)
            }
        }
    }
}

#Preview {
    CustomIndicatorView(totalPages: 3, currentPage: 1)
}
