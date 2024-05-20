//
//  MenuItem.swift
//  LittleLemon
//
//  Created by Hüseyin Emre Sarıoğlu on 18.05.2024.
//

import Foundation

enum MenuCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum Ingredient: String, CaseIterable {
    case apple = "Apple"
    case bacon = "Bacon"
    case bbqSauce = "Bbq Sauce"
    case beans = "Beans"
    case beef = "Beef"
    case bread = "Bread"
    case brownie = "Brownie"
    case butter = "Butter"
    case cake = "Cake"
    case caesarDressing = "Caesar Dressing"
    case cheese = "Cheese"
    case cherry = "Cherry"
    case chicken = "Chicken"
    case chips = "Chips"
    case chocolate = "Chocolate"
    case coffee = "Coffee"
    case cookie = "Cookie"
    case cream = "Cream"
    case creamSauce = "Cream Sauce"
    case croutons = "Croutons"
    case dough = "Dough"
    case egg = "Egg"
    case eggs = "Eggs"
    case fish = "Fish"
    case flour = "Flour"
    case fruit = "Fruit"
    case garlicButterSauce = "Garlic Butter Sauce"
    case ham = "Ham"
    case iceCream = "Ice Cream"
    case iceCreamSauce = "Ice Cream Sauce"
    case lettuce = "Lettuce"
    case lemon = "Lemon"
    case milk = "Milk"
    case mushroom = "Mushroom"
    case nuts = "Nuts"
    case olives = "Olives"
    case onion = "Onion"
    case orange = "Orange"
    case pasta = "Pasta"
    case pepperoni = "Pepperoni"
    case pineapple = "Pineapple"
    case pudding = "Pudding"
    case rice = "Rice"
    case sauce = "Sauce"
    case sausage = "Sausage"
    case shrimp = "Shrimp"
    case sugar = "Sugar"
    case tomato = "Tomato"
    case tomatoSauce = "Tomato Sauce"
    case vegetables = "Vegetables"
    case water = "Water"
    case whippedCream = "Whipped Cream"
    case yogurt = "Yogurt"
}

struct MenuItem: Identifiable {
    let id: UUID
    let title: String
    let image: String
    let category: MenuCategory
    var ordersCount: Int
    var price: Double
    var ingredients: [Ingredient]

    init(id: UUID = UUID(), title: String, image: String, category: MenuCategory, price: Double, ordersCount: Int, ingredients: [Ingredient]) {
        self.id = id
        self.title = title
        self.image = image
        self.category = category
        self.price = price
        self.ordersCount = ordersCount
        self.ingredients = ingredients
    }
    
    static var mockData: [MenuItem] {
        return [
            //foods
            MenuItem(title: "Spaghetti Carbonara", image: "spaghetti carbonara", category: .food, price: 13.99, ordersCount: 10, ingredients: [.pasta, .tomatoSauce]),
            MenuItem(title: "Grilled Chicken Salad", image: "grilled chicken salad", category: .food, price: 10.99, ordersCount: 8, ingredients: [.chicken, .lettuce, .tomato, .cheese]),
            MenuItem(title: "Margherita Pizza", image: "margherita pizza", category: .food, price: 12.99, ordersCount: 6, ingredients: [.dough, .tomatoSauce, .cheese]),
            MenuItem(title: "Cheeseburger", image: "cheeseburger", category: .food, price: 9.99, ordersCount: 8, ingredients: [.beef, .cheese, .lettuce, .tomato, .onion, .bread]),
            MenuItem(title: "Fish and Chips", image: "fish and chips", category: .food, price: 11.99, ordersCount: 12, ingredients: [.fish, .chips]),
            MenuItem(title: "Beef Lasagna", image: "beef lasagna", category: .food, price: 12.99, ordersCount: 15, ingredients: [.beef, .cheese, .pasta, .tomatoSauce]),
            MenuItem(title: "Mushroom Risotto", image: "mushroom risotto", category: .food, price: 11.99, ordersCount: 9, ingredients: [.rice, .mushroom, .cheese]),
            MenuItem(title: "BBQ Ribs", image: "bbq ribs", category: .food, price: 15.99, ordersCount: 7, ingredients: [.beef, .bbqSauce]),
            MenuItem(title: "Vegetable Stir-Fry", image: "vegetable stir-fry", category: .food, price: 11.99, ordersCount: 11, ingredients: [.rice, .vegetables]),
            MenuItem(title: "Chicken Alfredo", image: "chicken alfredo", category: .food, price: 13.99, ordersCount: 10, ingredients: [.chicken, .pasta, .creamSauce]),
            MenuItem(title: "Shrimp Scampi", image: "shrimp scampi", category: .food, price: 14.99, ordersCount: 8, ingredients: [.shrimp, .pasta, .garlicButterSauce]),
            MenuItem(title: "Steak", image: "steak", category: .food, price: 17.99, ordersCount: 14, ingredients: [.beef]),
            //drinks
            MenuItem(title: "Cola", image: "cola", category: .drink, price: 1.99, ordersCount: 20, ingredients: []),
            MenuItem(title: "Orange Juice", image: "orange juice", category: .drink, price: 2.49, ordersCount: 15, ingredients: [.orange]),
            MenuItem(title: "Iced Tea", image: "iced tea", category: .drink, price: 1.99, ordersCount: 18, ingredients: []),
            MenuItem(title: "Water", image: "water", category: .drink, price: 1.49, ordersCount: 25, ingredients: []),
            MenuItem(title: "Coffee", image: "coffee", category: .drink, price: 2.99, ordersCount: 12, ingredients: [.coffee]),
            MenuItem(title: "Milkshake", image: "milkshake", category: .drink, price: 3.99, ordersCount: 8, ingredients: [.milk, .iceCream]),
            MenuItem(title: "Smoothie", image: "smoothie", category: .drink, price: 4.49, ordersCount: 10, ingredients: [.fruit, .yogurt]),
            MenuItem(title: "Lemonade", image: "lemonade", category: .drink, price: 2.49, ordersCount: 14, ingredients: [.lemon, .sugar, .water]),
            //desserts
            MenuItem(title: "Cheesecake", image: "cheesecake", category: .dessert, price: 5.99, ordersCount: 9, ingredients: [.cheese, .sugar, .butter, .cream]),
            MenuItem(title: "Ice Cream Sundae", image: "ice cream sundae", category: .dessert, price: 4.99, ordersCount: 11, ingredients: [.iceCream, .sauce, .whippedCream, .nuts, .cherry]),
            MenuItem(title: "Apple Pie", image: "apple pie", category: .dessert, price: 4.49, ordersCount: 7, ingredients: [.apple, .sugar, .flour, .butter]),
            MenuItem(title: "Chocolate Brownie", image: "chocolate brownie", category: .dessert, price: 3.99, ordersCount: 8, ingredients: [.chocolate, .butter, .sugar, .flour, .eggs])
        ]
    }
}
