// swift-tools-version:5.9
import PackageDescription

let package = Package(name: "GitHubTrendingAPI", platforms: [
    .macOS(.v13)
    ], dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.83.1"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.8.0"),
        .package(url: "https://github.com/vapor/fluent-mongo-driver.git", from: "1.0.0"),
    ], targets: [
        .executableTarget(name: "GitHubTrendingAPI", dependencies: [
                .product(name: "Fluent", package: "fluent"),
                .product(name: "FluentMongoDriver", package: "fluent-mongo-driver"),
                .product(name: "Vapor", package: "vapor"),
            ]
        )
    ]
)
