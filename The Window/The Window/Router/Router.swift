//
//  Router.swift
//  The Window
//
//  Created by YeasirArefinTusher-11702 on 15/11/23.
//

import Foundation
import SwiftUI

final class Router: ObservableObject{
    
// MARK: The navigator
    public enum Destination: Codable, Hashable{
        case homescreen
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination){
        navPath.append(destination)
    }
    
    func navigateBack(){
        navPath.removeLast()
    }
    
    func navigateToRoot(){
        navPath.removeLast(navPath.count)
    }
    
}
