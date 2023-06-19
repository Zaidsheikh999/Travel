//
//  ContentView.swift
//  Travel
//
//  Created by Zaid Sheikh on 15/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
            if isLoggedIn{
                MainView()
            } else{
                SignInView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
