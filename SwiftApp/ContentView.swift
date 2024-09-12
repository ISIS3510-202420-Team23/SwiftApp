//
//  ContentView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 8/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Andlet")
            Button("Log in") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            Menu("Options") {
                Button("Menu Item 1") {
                    // Acción para Menu Item 1
                }
                Button("Menu Item 2") {
                    // Acción para Menu Item 2
                }
                Button("Menu Item 3") {
                    // Acción para Menu Item 3
                }
            }
            .padding()
            LazyVStack {
                VStack 
                {
                    ForEach(1...5, id: \.self) { count in
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    }}
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
