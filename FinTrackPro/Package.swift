// swift-tools-version:5.8.1
import PackageDescription

let package = Package(
    name: "FinTrackPro",
    platforms: [
        .iOS(.v14) // Plataformas y versiones mínimas compatibles
    ],
    products: [
        .library(
            name: "FinTrackPro",
            targets: ["FinTrackPro"]),
    ],
    dependencies: [
        // Dependencias externas
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.4"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.15.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.12.0"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.1.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0"),
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "10.40.2"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
        .package(url: "https://github.com/apple/swift-format.git", from: "600.0.0"),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.28.1"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1")
    ],
    targets: [
        .target(
            name: "FinTrackPro",
            dependencies: [
                "Alamofire",
                .product(name: "Firebase", package: "firebase-ios-sdk"),
                .product(name: "AppCheck", package: "firebase-ios-sdk"),
                .product(name: "GoogleAppMeasurement", package: "firebase-ios-sdk"),
                .product(name: "GoogleDataTransport", package: "firebase-ios-sdk"),
                .product(name: "GoogleUtilities", package: "firebase-ios-sdk"),
                .product(name: "gRPC", package: "firebase-ios-sdk"),
                .product(name: "GTMSessionFetcher", package: "firebase-ios-sdk"),
                .product(name: "InteropForGoogle", package: "firebase-ios-sdk"),
                "Kingfisher",
                "Lottie",
                "Promises", // Asegúrate de tener un paquete válido para 'Promises'
                .product(name: "RealmSwift", package: "realm-cocoa"),
                "RxSwift",
                .product(name: "swift-argument-parser", package: "swift-argument-parser"),
                .product(name: "swift-format", package: "swift-format"),
                "SwiftProtobuf",
                "SwiftyJSON"
            ],
            path: "Sources"), // Ajusta la ruta a tu código fuente principal
        .testTarget(
            name: "FinTrackProTests",
            dependencies: ["FinTrackPro"],
            path: "Tests"), // Ajusta la ruta a tu código de pruebas unitarias
        .testTarget(
            name: "FinTrackProUITests",
            dependencies: ["FinTrackPro"],
            path: "UITests") // Ajusta la ruta a tu código de pruebas de interfaz de usuario
    ]
)
