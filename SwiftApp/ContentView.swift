//
//  ContentView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 8/09/24.
//

import SwiftUI

struct ContentView: View {
    //    var body: some View {
    //        VStack {
    //            Image(systemName: "globe")
    //                .imageScale(.large)
    //                .foregroundStyle(.tint)
    //            Text("Andlet")
    //                .font(.custom("Montserrat-Regular", size: 20))
    //            Text("test")
    //                .font(.custom("LeagueSpartan-Regular", size: 5))
    //        }
    //        }
    //    }
    
    @State private var birthdate = Date()
    
    var body: some View {
        DatePicker ("Birthdate", selection: $birthdate, displayedComponents: .date)
    }
}
#Preview {
    ContentView()
}

