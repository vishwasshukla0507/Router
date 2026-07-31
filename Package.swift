//
//  Package.swift
//  Router
//
//  Created by Vishwas Shukla on 31/07/26.
//

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YourPackageName",
    platforms: [
        .iOS(.v15) // Set your minimum iOS version here
    ],
    products: [
        .library(
            name: "YourPackageName",
            targets: ["YourPackageName"]),
    ],
    targets: [
        .target(
            name: "YourPackageName",
            dependencies: []), // Add paths: ["OriginalFolderName"] here if you didn't move your files to a Sources folder
    ]
)
