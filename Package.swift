// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-cmark-gfm",

    products: [
        .library(name: "swift-cmark-gfm", targets: ["cmark-gfm"]),
    ],

    targets: [
        // Exclude the main file so cmark is built as a library.
        .target(name: "cmark-gfm", path: "src", exclude: ["main.c"]),
    ]
)
