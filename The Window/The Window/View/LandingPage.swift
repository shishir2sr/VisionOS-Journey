//
//  ContentView.swift
//  The Window
//
//  Created by YeasirArefinTusher-11702 on 15/11/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct LandingPage: View {
    // MARK: - Environment Objects
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack{
            // MARK: Backgroun Image
           Image("Background")
                .resizable(resizingMode: .stretch)
                .scaledToFill()
                .blur(radius: 0, opaque: true)
            
            // MARK: Store Home
            
                NavigationLink(destination: HomeScreen()) {
                        Label {
                            Text("Visit Store")
                        } icon: {
                            Image(systemName: "arrow.up.forward.app")
                                .fontWeight(.regular)
                        }
                        .background(.clear)
                        .font(.extraLargeTitle)
                        .padding()
                       
 
                }
                .glassBackgroundEffect()
            
        }
        
    }
    
}

#Preview(windowStyle: .automatic) {
    LandingPage()
}
