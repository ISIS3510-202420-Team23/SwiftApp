//
//  LogInSignInView.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 18/09/24.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

@MainActor
struct AuthenticationView: View {
    @State private var viewModel = AuthenticationViewModel()
    var totalPages: Int
    var page: Page
    var onLogginSuccess: () ->Void
    private func signInWithGoogle() {
        Task {
          if await viewModel.signInWithGoogle() == true {
            onLogginSuccess()
          }
        }
      }
    var body: some View {
        VStack(spacing: 20) {
            Spacer(minLength: 50)
            // Title
            Text(page.title)
                .font(.custom("LeagueSpartan-Regular", size: 40).bold())
                .foregroundColor(Color(hex: "#1B3A68"))
                .multilineTextAlignment(.leading)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 27)
            
                    
            Text(page.subTitle)
                .font(.custom("Montserrat-Regular", size: 25))
                .foregroundColor(Color(hex: "#1B3A68"))
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 27)
                    
            Spacer(minLength: 50)
                    
            VStack(spacing: 16) {
                
                // Register prompt
                HStack{
                    // TODO: Fuente
                    Text("New Member?")
                        .foregroundColor(Color(hex: "#0C356A"))
                        .font(.custom("Montserrat-Regular", size: 15))
                    // TODO: Fuente bold
                    Text("Register now")
                        .foregroundColor(Color(hex: "#0C356A"))
                        .font(.custom("Montserrat-Regular", size: 15))
                        .underline()
                            
                }
                // Sign in buttons
                Button(action: signInWithGoogle) {
                    HStack{
                        Image("GoogleIcon")
                            .resizable()
                            .frame(width: 25, height: 24)
                            .padding(.leading, 10)
                        // TODO: FUENTE
                        Text("Sign in with Gooogle")
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(radius: 5)
                }
                        
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.black)
                    // TODO: FUENTE
                    Text("Or log in with Email")
                        .font(.footnote)
                        .foregroundColor(.black)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                }
                        
                        // Google Log in Button
                Button(action: signInWithGoogle) {
                            
                    HStack {
                                
                        Image("GoogleIcon")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .padding(.leading, 10)
                                                
                        Text("Log in with Google")
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                    }
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(radius: 5)
        
                }
                
                Spacer()
                
                HStack{
                    CustomIndicatorView(totalPages: totalPages, currentPage: page.tag)
                    
                    Spacer()
                
                }
                .padding(.bottom, 70)
                .padding(.trailing, 20)
                .padding(.leading, 20)
                        
            }
            .padding(.horizontal)
            
        }
        .padding()
        .background(Color(hex: "#C5DDFF"))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    WelcomePageView()
}
