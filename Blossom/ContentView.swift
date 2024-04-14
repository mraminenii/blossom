//
//  ContentView.swift
//  Blossom
//
//  Created by Meghana Ramineni on 4/12/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var isLoggedIn = false
    @State private var isShowingOnboarding = false
    
    var body: some View {
            NavigationView {
                if !isLoggedIn {
                    LogInView(isLoggedIn: $isLoggedIn, isShowingOnboarding: $isShowingOnboarding)
                } else {
                    ProfileView()
                }
            }
            .sheet(isPresented: $isShowingOnboarding) {
                OnboardingView()
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    
    
    
    
    
//    var body: some View {
//        if !isLoggedIn {
//            LogInView(isLoggedIn: $isLoggedIn)
//        } else {
////            Text("Welcome to Blossom!")
////                .padding()
//        }
//    }
//    .sheet(isPresented: $isShowingOnboarding) {OnboardingView()}
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

