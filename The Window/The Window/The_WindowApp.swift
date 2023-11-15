//
//  The_WindowApp.swift
//  The Window
//
//  Created by YeasirArefinTusher-11702 on 15/11/23.
//

import SwiftUI

@main
struct The_WindowApp: App {
    
    var body: some Scene {
        
        @ObservedObject var router = Router()
        
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                LandingPage()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination{
                        case .homescreen:
                            HomeScreen()
                        }
                    }
            }
            .environmentObject(router)
            
        }
        .windowStyle(.plain)
    }
}
