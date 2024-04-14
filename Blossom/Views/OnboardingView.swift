//
//  OnboardingView.swift
//  Blossom
//
//  Created by Meghana Ramineni on 4/14/24.
//

import Foundation
import SwiftUI

//struct OnboardingView: View {
//    var body: some View {
//        VStack {
//            Text("Onboarding")
//                .font(.largeTitle)
//                .padding()
//
//            Text("Get started by learning the basics of our app!")
//                .font(.title)
//        }
//    }
//}

struct OnboardingView: View {
    let navBarColor = Color(hex: "#EBD9CC")
    let customLightGreen = Color(hex: "#ACC8B4")
    @State private var selectedOption: String? = nil
    
    var body: some View {
        VStack {
            // Top Navigation Bar
            Rectangle()
                .fill(navBarColor)
                .frame(height: 60) // Adjust height as needed
                .edgesIgnoringSafeArea(.top)
            
            Spacer()
            
            // Main Content
            VStack(spacing: 20) {
                Text("Are you a client or hair professional?")
                    .font(.title)
                
                // Option: Client
                Button(action: {
                    selectedOption = "client"
                }) {
                    Text("Client")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selectedOption == "client" ? customLightGreen : Color.white)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(customLightGreen, lineWidth: 2))
                        .cornerRadius(10)
                }
                
                // Option: Professional
                Button(action: {
                    selectedOption = "professional"
                }) {
                    Text("Professional")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selectedOption == "professional" ? customLightGreen : Color.white)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(customLightGreen, lineWidth: 2))
                        .cornerRadius(10)
                }
                
                // Continue Button
                Button(action: {
                    // Navigate to next onboarding view or action
                }) {
                    Text("Continue")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(customLightGreen)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
            
            // Bottom Navigation Bar
            Rectangle()
                .fill(navBarColor)
                .frame(height: 60) // Adjust height as needed
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
    }
}

