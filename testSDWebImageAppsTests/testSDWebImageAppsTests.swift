//
//  testSDWebImageAppsTests.swift
//  testSDWebImageAppsTests
//
//  Created by Alexandre Podlewski on 13/11/2021.
//

import XCTest
import SnapshotTesting
@testable import testSDWebImageApps
import SDWebImage

class testSDWebImageAppsTests: XCTestCase {

    override func setUp() {
        setupSDWebImageForTesting()

//        isRecording = true
    }

    func testViewController() throws {
        let viewController = ViewController()

        viewController.configure()

        assertSnapshot(matching: viewController, as: .image(on: .iPhoneX))
    }

    func testMultipleImagesViewController() throws {
        let viewController = MultipleImagesViewController()

        assertSnapshot(matching: viewController, as: .image(on: .iPhoneX))
    }
}
