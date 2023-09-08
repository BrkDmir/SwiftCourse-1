//
//  Core_Locatin_ve_Map_Kit_KullanimiUITestsLaunchTests.swift
//  Core Locatin ve Map Kit KullanimiUITests
//
//  Created by Berkay DEMİR on 8.09.2023.
//

import XCTest

final class Core_Locatin_ve_Map_Kit_KullanimiUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
