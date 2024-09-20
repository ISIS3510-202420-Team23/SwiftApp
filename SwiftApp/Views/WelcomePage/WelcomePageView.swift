//
//  WelcomePageView.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 16/09/24.
//

import SwiftUI

struct WelcomePageView: View {
    @State private var pageIndex = 0
    private let WelcomePages: [Page] = Page.pages
    var body: some View {
        TabView(selection: $pageIndex) {
            WelcomeIndividualPageView(pageIndex: $pageIndex, totalPages:WelcomePages.count , page: WelcomePages[0])
                .tag(WelcomePages[0].tag)
            AuthenticationView(totalPages: WelcomePages.count, page: WelcomePages[1]){
                pageIndex = 2
            }
                .tag(WelcomePages[1].tag)
            ProfilePickerView()
                .tag(WelcomePages[2].tag)
        }
            
            
    }
    func incrementPage(){
        pageIndex += 1
    }
}

#Preview {
    WelcomePageView()
}
