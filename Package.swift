// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "LanguageKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "LanguageKit",
                    targets: ["LanguageKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/horizontalsystems/UIExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "LanguageKit",
                    dependencies: [
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                    ]
            ),
        ]
)
