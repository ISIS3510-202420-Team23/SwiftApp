//
//  FiltersSearchView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 17/09/24.
//

import SwiftUI

enum FilterSearchOptions {
    case dates
    case prices
    case minutes
}

struct FilterSearchView: View {
    @Binding var show: Bool
    @State private var selectedOption: FilterSearchOptions = .dates
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var minPrice: Double = 0
    @State private var maxPrice: Double = 10000000
    @State private var minMinutes: Double = 0
    @State private var maxMinutes: Double = 30
    
    
    var body: some View {
        VStack {
            HStack{
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(hex: "FFF4CF"))
                        
                        .background{
                            Circle()
                                .fill(Color(hex: "0C356A"))
                                .frame(width: 40, height: 40)
                        }
                    
                }
                
                Spacer()
                
                
            }
            .padding()
            
            
            VStack (alignment: .leading){
                if selectedOption == .dates {
                    Text ("When?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate,
                                    displayedComponents: .date)
                        
                        Divider ()
                        
                        DatePicker("To", selection: $endDate,
                                    displayedComponents: .date)
                    
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    
                    
                }else{
                    CollapsedPickedView(title: "When", description: "Add dates")
                }
            }
                .padding()
                .frame(height: selectedOption == .dates ? 180: 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .dates}
                }
            
            
            VStack (alignment: .leading){
                if selectedOption == .prices {
                Text("Price")
                .font(.title2)
                .fontWeight(.semibold)
             
                Slider(value: $maxPrice, in: 0...10000000, step: 100000)
                        .accentColor(Color(hex: "0C356A"))
                HStack {
                    Spacer()
                    Text("$\(Int(maxPrice))")
                }
                .padding(.horizontal)
                    
                }else{
                    CollapsedPickedView(title: "Price", description: "Select price")
                }
            }
                .padding()
                .frame(height: selectedOption == .prices ? 120: 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .prices}
                }
            
            VStack (alignment: .leading){
                if selectedOption == .minutes {
                Text("Minutes from campus")
                .font(.title2)
                .fontWeight(.semibold)
                
                Slider(value: $maxMinutes, in: 0...30, step: 1)
                        .accentColor(Color(hex: "0C356A"))
                HStack {
                    Spacer()
                    Text("\(Int(maxMinutes)) mins")
                }
                .padding(.horizontal)
                    
                    
                }else{
                    CollapsedPickedView(title: "Minutes from campus", description: "Select minutes")
                }
            }
                .padding()
                .frame(height: selectedOption == .minutes ? 120: 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .minutes}
                
                }
            
                Spacer ()
            
        }
    }
}

#Preview {
    FilterSearchView(show: .constant(false))
}

struct CollapsibleFilterViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
                                        

struct CollapsedPickedView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text (description)
            }
            //                .fontWeight(.bold)
            .font(.subheadline)
        }

    }
}
