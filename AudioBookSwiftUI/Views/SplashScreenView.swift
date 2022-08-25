//
//  SplashScreenView.swift
//  AudioBookSwiftUI
//
//  Created by Syber Expertise on 03/01/2022.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack{
            Image("logo")
            
            Spacer()
            
            Text("Version 1.0")
                .foregroundColor(ColorsConstants.textSecondryColor)
        }
        .padding(.vertical, 90)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ColorsConstants.primary)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
