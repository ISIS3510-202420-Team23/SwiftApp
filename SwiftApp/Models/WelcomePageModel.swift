//
//  WelcomePageModel.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 16/09/24.
//

import Foundation

struct Page: Identifiable {
    let id = UUID()
    var name: String
    var title: String
    var imageUrl: String
    var tag: Int
    var subTitle: String
    var displaysAction: Bool = false
    static var initialPage = Page(name: "", title: "AndletLogo", imageUrl: "AndletLogo", tag: 0, subTitle: "")
    static var pages: [Page] = [
        Page(name: "Logo App", title: "", imageUrl: "AndletLogo", tag: 0, subTitle: ""),
        Page(name: "Log in view", title: "Welcome to\nAndlet!", imageUrl: "", tag: 1, subTitle: "Sign-in to access\nyour account", displaysAction: true),
        Page(name: "Select role view", title: "Let's start! First...", imageUrl: "AndletLogo", tag: 2, subTitle: "What are you looking for?")
        
    ]
    
    
}
