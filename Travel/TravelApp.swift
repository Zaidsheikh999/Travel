//
//  TravelApp.swift
//  Travel
//
//  Created by Zaid Sheikh on 15/06/2023.
//

import SwiftUI

@main
struct TravelApp: App {
    
    @AppStorage("hasShownTutorial") var hasShownTutorial: Bool = false

    @StateObject var viewModel: TravelAppViewModel = TravelAppViewModel()
    
    var body: some Scene {
        WindowGroup {
            if hasShownTutorial{
                ContentView().environmentObject(viewModel)
            }
            else {
                WelcomeView().environmentObject(viewModel)
                    .onAppear {
                        hasShownTutorial = true
                    }
            }
        }
    }
}
