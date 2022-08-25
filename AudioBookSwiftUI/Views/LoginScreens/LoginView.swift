//
//  LoginView.swift
//  AudioBookSwiftUI
//
//  Created by Syber Expertise on 03/01/2022.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        VStack {
            
            Image("logo")
                .resizable()
                .frame(width: 200, height: 200)
            
            LoginBody()
            
            VStack(alignment: .trailing, spacing: 20) {
                
                MainButton(text: "Login", action: {})
                    
                Button(action: {}, label: {
                    Text("Forget Password?")
                        .foregroundColor(ColorsConstants.textThirdColor)
                        .font(.title3)
                        .fontWeight(.semibold)
                })
            }
            
            Spacer()
            
            VStack {
                Text("Or login with")
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                
                HStack {
                    Button(action: {}, label: {
                        Image("Google")
                            .shadow(color: .gray, radius: 2, x: -2, y: 3)
                    })
                    
                    Button(action: {}, label: {
                        Image("Facebook")
                            .shadow(color: .gray, radius: 2, x: -2, y: 3)
                    })
                }
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(ColorsConstants.textPrimaryColor)
                    
                    NavigationLink(destination: NavigationView{RegisterView().navigationBarHidden(true)}.navigationBarHidden(true), label: {
                        Text("Register")
                            .foregroundColor(ColorsConstants.textThirdColor)
                            .fontWeight(.semibold)
                    })
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 40)
        .background(ColorsConstants.primary)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct MainButton: View {
    var text: String
    var action: () -> Void
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.semibold)
        })
            .frame(maxWidth: .infinity, maxHeight: 60)
            .background(ColorsConstants.secondry)
            .cornerRadius(15)
    }
}

struct LoginBody: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Login to Your Account")
                .foregroundColor(ColorsConstants.textPrimaryColor)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ZStack {
                TextField("Email", text: $email)
            }
            .padding()
            .frame(height: 60)
            .background(Color(red: 0.961, green: 0.96, blue: 0.982))
            .cornerRadius(15)
            
            ZStack {
                TextField("Password", text: $password)
            }
            .padding()
            .frame(height: 60)
            .background(Color(red: 0.961, green: 0.96, blue: 0.982))
            .cornerRadius(15)
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "rectangle")
                        .resizable()
                        .frame(width: 25, height: 25)
                })
                    .padding(.trailing, 5)
                
                Text("Remeber me")
                    .font(.title2)
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                
                Spacer()
            }
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
    }
}
