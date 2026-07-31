//
//  Router.swift
//  Router
//
//  Created by Vishwas Shukla on 31/07/26.
//

import SwiftUI
import Combine

/// A generic router for managing navigation between different screens in SwiftUI
protocol NavigationDestination {
    associatedtype Destination: View
    
    var title: String { get }
    @ViewBuilder
    var destinationView: Destination { get }
}

final class Router<Destination: NavigationDestination>: ObservableObject {
    
    /// Holds the stack of destinations for navigation
    @Published var navPaths: [Destination] = []
    
    func navigate(to destination: Destination) {
        navPaths.append(destination)
    }
    
    func navigateBack() {
        guard !navPaths.isEmpty else { return }
        navPaths.removeLast()
    }
    
    func navigateToRoot() {
        navPaths.removeLast(navPaths.count)
    }
    
}

