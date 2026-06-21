// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "social_story_share",
    platforms: [
       .iOS("13.0")
    ],
    products: [
        // library and target names.
        // If the plugin name contains "_", replace with "-" for the library name.
        .library(name: "social-story-share", targets: ["social_story_share"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "social_story_share",
            dependencies: [],
            resources: [
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
