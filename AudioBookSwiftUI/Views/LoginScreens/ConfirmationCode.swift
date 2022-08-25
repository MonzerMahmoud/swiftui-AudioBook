//
//  ConfirmationCode.swift
//  AudioBookSwiftUI
//
//  Created by Syber Expertise on 13/01/2022.
//

import SwiftUI

struct ConfirmationCode: View {
    var email: String
    @State var confirmationCode: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 200, height: 200)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Confirmation Code")
                    .foregroundColor(ColorsConstants.textPrimaryColor)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Enter the code we sent to")
                            .foregroundColor(ColorsConstants.textPrimaryColor)
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(email + ".")
                            .foregroundColor(ColorsConstants.textPrimaryColor)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    
                    ZStack {
                        TextField("Confirmation Code", text: $confirmationCode)
                    }
                    .padding()
                    .frame(height: 60)
                    .background(Color(red: 0.961, green: 0.96, blue: 0.982))
                    .cornerRadius(15)
                    
                    HStack {
                        Text("Didn't receive the code?")
                        .foregroundColor(ColorsConstants.textPrimaryColor)
                        .font(.title3)
                        
                        Button(action: {}, label: {
                            Text("Resend")
                                .foregroundColor(ColorsConstants.textThirdColor)
                                .fontWeight(.semibold)
                        })
                    }
                }
                
                MainButton(text: "Submit", action: {})
                
                SecondryButton(text: "Cancel", action: {presentationMode.wrappedValue.dismiss()})
            }
            .padding()
            
           Spacer()
        }
        .padding()
    }
}

struct ConfirmationCode_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationCode(email: "Your@email.com")
    }
}
