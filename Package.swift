// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackageDemo",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ProductMyPackageDemo",
            targets: ["MyPackageDemo"]),
        .library(name: "ProductTargetOne", targets: ["MyPackageDemo", "TargetOne"]),
        .library(name: "ProductTargetTwo", targets: ["TargetTwo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-atomics.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-collections.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-crypto.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/apple/swift-nio.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/apple/swift-numerics.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-system.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.0.0")),
        
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.5.0")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", .upToNextMajor(from: "8.0.0")),
        
        .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", .upToNextMajor(from: "5.0.0")),
//        .package(url: "https://github.com/yoavlt/LiquidLoader.git", .upToNextMajor(from: "1.0.0")),
        
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyPackageDemo",
            dependencies: [
                "Alamofire",
                
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Atomics", package: "swift-atomics"),
                
                .product(name: "Collections", package: "swift-collections"),
                .product(name: "DequeModule", package: "swift-collections"),
                .product(name: "OrderedCollections", package: "swift-collections"),
                
                .product(name: "Crypto", package: "swift-crypto"),
                .product(name: "NIO", package: "swift-nio"),
            ]),
        .target(name: "TargetOne",
                dependencies: [
                    .product(name: "ComplexModule", package: "swift-numerics"),
                    .product(name: "Numerics", package: "swift-numerics"),
                    .product(name: "RealModule", package: "swift-numerics"),
                ]),
        .target(name: "TargetTwo",
                dependencies: [
                    .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                    .product(name: "SystemPackage", package: "swift-system"),
                ]),
        
        // 测试
        .testTarget(
            name: "MyPackageDemoTests",
            dependencies: ["MyPackageDemo"]),
        
            .executableTarget(name: "Example1",
                              dependencies: ["MyPackageDemo"],
                             path: "Example/Source/MyPackageDemo"),
        
            .executableTarget(name: "Example2",
                              dependencies: ["MyPackageDemo", "TargetOne"],
                             path: "Example/Source/TargetOne"),
        
            .executableTarget(name: "Example3",
                              dependencies: ["TargetTwo"],
                             path: "Example/Source/TargetTwo"),
    ]
)
