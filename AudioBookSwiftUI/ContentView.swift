//
//  ContentView.swift
//  AudioBookSwiftUI
//
//  Created by Syber Expertise on 03/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LoginView().navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
