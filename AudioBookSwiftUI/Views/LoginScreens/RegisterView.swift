//
//  RegisterView.swift
//  AudioBookSwiftUI
//
//  Created by Syber Expertise on 06/01/2022.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 200, height: 200)
            
            RegisterInfos()
            
            AgreementView()
            
            NavigationLink(destination: NavigationView {
                ConfirmationCode(email: "your@email.com").navigationBarHidden(true)
            }.navigationBarHidden(true), label: {
                MainButton(text: "Register", action: {})
            })
            
            SecondryButton(text: "Cancel", action: {presentationMode.wrappedValue.dismiss()})
                .padding(.top)
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

struct SecondryButton: View {
    var text: String
    var action: () -> Void
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .foregroundColor(ColorsConstants.secondry)
                .font(.title2)
                .fontWeight(.semibold)
        })
            .frame(maxWidth: .infinity, maxHeight: 60)
            .background(.white)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(ColorsConstants.secondry, lineWidth: 2))
    }
}

struct RegisterInfos: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var birthdate: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("Register")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(ColorsConstants.textPrimaryColor)
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
            
            ZStack {
                TextField("Date of Birth", text: $birthdate)
            }
            .padding()
            .frame(height: 60)
            .background(Color(red: 0.961, green: 0.96, blue: 0.982))
            .cornerRadius(15)
        }
        .frame(maxWidth: .infinity)
    }
}

struct AgreementView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 0) {
                Text("By signing up, you agree to our ")
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                
                Button(action: {}, label: {
                    Text("Terms")
                        .foregroundColor(ColorsConstants.textThirdColor)
                        .fontWeight(.semibold)
                })
                
                Text(",")
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                
                Spacer()
                
            }
            
            HStack(spacing: 0) {
                Button(action: {}, label: {
                    Text("Data Policy")
                        .foregroundColor(ColorsConstants.textThirdColor)
                        .fontWeight(.semibold)
                })
                
                Text(" and ")
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                
                Button(action: {}, label: {
                    Text("Cookies Policy")
                        .foregroundColor(ColorsConstants.textThirdColor)
                        .fontWeight(.semibold)
                })
                
                Text(".")
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                Spacer()
            }
        }
        .padding()
    }
}
