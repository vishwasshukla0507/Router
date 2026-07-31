// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Router",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "Router",
            targets: ["Router"]
        ),
    ],
    targets: [
        .target(
            name: "Router",
            dependencies: [],
            path: "Router/Sources" // <--- Points SPM directly to your source files
        )
    ]
)
