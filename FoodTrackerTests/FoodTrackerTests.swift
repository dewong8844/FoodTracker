//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Dennis Wong on 10/23/16.
//  Copyright © 2016 Dennis Wong. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    // MARK: FoodTracker Tests
    
    // Tests to confirm the Meal initializer returns when no name or negative rating is provided
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")

        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
        

    }
}
