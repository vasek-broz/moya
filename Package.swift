// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Moya",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "Moya", targets: ["Moya"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(
            name: "Moya",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Sources"
        )
    ]
)
