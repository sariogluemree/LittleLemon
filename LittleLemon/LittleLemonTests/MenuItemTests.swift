//
//  MenuItemTests.swift
//  LittleLemonTests
//
//  Created by Hüseyin Emre Sarıoğlu on 18.05.2024.
//

import XCTest
@testable import LittleLemon

class MenuItemTests: XCTestCase {

    func testMenuItemTitle() {
        let menuItem = MenuItem(title: "Test Title", image: "test image", category: .food, price: 0, ordersCount: 0, ingredients: [])
        XCTAssertEqual(menuItem.title, "Test Title")
    }

    func testMenuItemIngredients() {
        let ingredients: [Ingredient] = [.pasta, .tomatoSauce, .cheese]
        let menuItem = MenuItem(title: "Test Title", image: "test image", category: .food, price: 0, ordersCount: 0, ingredients: ingredients)
        XCTAssertEqual(menuItem.ingredients, ingredients)
    }

}
