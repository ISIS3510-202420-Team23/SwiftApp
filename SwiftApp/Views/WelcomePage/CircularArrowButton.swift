//
//  CircularArrowButton.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 18/09/24.
//

import SwiftUI

struct CircularArrowButton: View {
    var body: some View {
            ZStack {
                // Circle with dark blue background
                Color(hex: "#0C356A") // Hex color for the circle (dark blue)
                    .frame(width: 60, height: 60) // Circle size
                    .clipShape(Circle()) // Shape it as a circle
                    .shadow(radius: 5) // Add shadow for some depth
                
                // Right arrow icon
                Image(systemName: "chevron.right")
                    .foregroundColor(.white) // White color for the arrow
                    .font(.system(size: 24, weight: .bold)) // Adjust arrow size and weight
            }
        }
}

#Preview {
    CircularArrowButton()
}
