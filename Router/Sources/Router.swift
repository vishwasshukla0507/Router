//
//  Router.swift
//  Router
//
//  Created by Vishwas Shukla on 31/07/26.
//

import SwiftUI
import Combine

/// A generic router for managing navigation between different screens in SwiftUI
public protocol NavigationDestination {
    associatedtype Destination: View
    
    var title: String { get }
    @ViewBuilder
    var destinationView: Destination { get }
}

public final class Router<Destination: NavigationDestination>: ObservableObject {
    
    /// Holds the stack of destinations for navigation
    @Published public var navPaths: [Destination] = []
    
    public init() {}
    
    public func navigate(to destination: Destination) {
        navPaths.append(destination)
    }
    
    public func navigateBack() {
        guard !navPaths.isEmpty else { return }
        navPaths.removeLast()
    }
    
    public func navigateToRoot() {
        navPaths.removeLast(navPaths.count)
    }
    
}

