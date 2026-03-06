import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("flutter_ble_peripheral_flutter_ble_peripheral.bundle").path
        let buildPath = "/Users/macintoshi/Desktop/flutter/super_app/packages/flutter_ble_peripheral/darwin/flutter_ble_peripheral/.build/arm64-apple-macosx/debug/flutter_ble_peripheral_flutter_ble_peripheral.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}