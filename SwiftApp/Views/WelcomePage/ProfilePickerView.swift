//
//  ProfilePickerView.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 18/09/24.
//

import SwiftUI

struct ProfilePickerView: View {
    var body: some View {
        VStack {
            // Top Section: Title
            VStack(alignment: .leading, spacing: 8) {
                Text("Let's start!\nFirst...")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color(hex: "#1B3A68"))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            .padding(.top, 60)
                    
            Spacer() 
                    
            // Middle Section: Question and Buttons
            VStack(spacing: 20) {
                Text("What are you\nlooking for?")
                    .font(.title2)
                    .foregroundColor(Color(hex: "#1B3A68"))
                    .multilineTextAlignment(.center)
                        
                // Rent Button
                Button(action: {
                    // Action for "I want to rent a place"
                }) {
                    Text("I want to rent a place!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 280, height: 50)
                        .background(Color(hex: "#F7B500")) // Yellow background
                        .cornerRadius(25) // Rounded button
                }
                        
                // List Button
                Button(action: {
                    // Action for "I want to list my place"
                }) {
                    Text("I want to list my place!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 280, height: 50)
                        .background(Color(hex: "#1B3A68")) // Dark blue background
                        .cornerRadius(25) // Rounded button
                }
            }
                    
            Spacer() // Pushes the content up from the bottom
                    
            // Bottom Section: Custom Page Indicator
            HStack {
                CustomIndicatorView(totalPages: 3, currentPage: 2)
                Spacer()
            }
            .padding(.bottom, 70)
            .padding(.leading, 40)
        }
        .padding()
        .background(Color(hex: "#C5DDFF")) // Light blue background
        .edgesIgnoringSafeArea(.all) // Full screen background
    }
}

#Preview {
    ProfilePickerView()
}
