//
//  Package.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 11/02/2017.
//
//

import PackageDescription

let package = Package(
    name: "VBPerfectArchitecture",
    targets: [
        Target(
            name: "VBPerfectArchitecture",
            dependencies: []
        )
    ],
    dependencies: [
        .Package(
            url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git",
            versions: Version(0,0,0) ..< Version(10,0,0)
        )
    ],
    exclude: []
)
