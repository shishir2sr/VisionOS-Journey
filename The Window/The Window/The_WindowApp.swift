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
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
