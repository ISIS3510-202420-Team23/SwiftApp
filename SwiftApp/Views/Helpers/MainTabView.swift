//
//  MainTabView.swift
//  SwiftApp
//
//  Created by Sofía Torres Ramírez on 18/09/24.
//

import SwiftUI


struct MainTabView: View {
    init() {
          
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
       }
    
    var body: some View {
        TabView {
            HomepageView()
                .tabItem {
                    Label("Explore", systemImage: "location.fill"
                        )
                    .foregroundStyle(Color(hex: "0C356A"))
                }
            
        }
        .accentColor(Color(hex: "0C356A"))
    }
}

#Preview {
    MainTabView()
    
}
