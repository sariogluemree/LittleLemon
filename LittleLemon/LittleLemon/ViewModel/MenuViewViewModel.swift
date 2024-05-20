//
//  MenuViewViewModel.swift
//  LittleLemon
//
//  Created by Hüseyin Emre Sarıoğlu on 18.05.2024.
//

import Foundation

enum SortOption: String, CaseIterable {
    case mostPopular = "Most Popular"
    case priceLowToHigh = "Price $-$$$"
    case alphabetical = "A-Z"
}

class MenuViewViewModel: ObservableObject {
    @Published var menuItems: [MenuItem] = MenuItem.mockData
    @Published var selectedCategories: [MenuCategory] = MenuCategory.allCases
    @Published var sortOption: SortOption = .mostPopular
    
    var filteredMenuItems: [MenuItem] {
        var items = menuItems.filter { selectedCategories.contains($0.category) }
        
        switch sortOption {
        case .mostPopular:
            items.sort { $0.ordersCount > $1.ordersCount }
        case .priceLowToHigh:
            items.sort { $0.price < $1.price }
        case .alphabetical:
            items.sort { $0.title < $1.title }
        }
        
        return items
    }
}
