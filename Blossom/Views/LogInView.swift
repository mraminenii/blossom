//
//  LogInView.swift
//  Blossom
//
//  Created by Meghana Ramineni on 4/14/24.
//

import Foundation
import SwiftUI

struct LogInView: View {
    @Binding var isLoggedIn: Bool
    @Binding var isShowingOnboarding: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    
    let customGreen = Color(red: 54 / 255, green: 82 / 255, blue: 65 / 255)
    let customGray = Color(red: 117 / 255, green: 117 / 255, blue: 117 / 255)
    private let fieldHeight: CGFloat = 44
    
    var body: some View {
        ZStack {
            
            VStack {
                HStack {
                    Image("topL_background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .leading)
                    Spacer()
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image("bottomR_background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .trailing)
                }
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 20) {
                
                Text("BLOSSOM")
                    .font(.custom("ABeeZee-Regular", size: 45))
                    .foregroundColor(customGreen)
                
                HStack {
                    Spacer()
                    Text("Blossoming the relationship between hair professionals and their clientele.")
                        .font(.custom("Lato-Italic", size: 12))
                        .foregroundColor(customGreen)
                        .multilineTextAlignment(.center)
                        //.italic()
                    Spacer()
                }
                .padding([.leading, .trailing], 45)
                
                Image("blossom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 250)
                
                TextField("Email", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(customGreen, lineWidth: 1))
                    .padding(.horizontal, 35)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(customGreen, lineWidth: 1))
                    .padding(.horizontal, 35)
                
                Button(action: {
                    isLoggedIn = true
                }) {
                    Text("Sign In")
                        .padding(.vertical, 10)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(customGreen)
                        .cornerRadius(10)
                        .padding(.horizontal, 35)
                }
                
                HStack {
                    Button(action: {
                    }) {
                        Text("Forgot Password?")
                            .font(.system(size: 14))
                            .foregroundColor(customGray)
                    }
                    
                    Spacer()
                    
                    Button(action: {isShowingOnboarding = true
                    }) {
                        Text("Sign Up")
                            .font(.system(size: 14))
                            .foregroundColor(customGray)
                    }
                }
                .padding(.horizontal, 35)
                
            }
            .padding()
            
        }
    }
}
