//
//  MenuViewViewModel.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 04/06/2023.
//

import Foundation

protocol MenuItemProtocol: Identifiable {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var newPrice: Int { get set }
    var ingredients: [Ingredient] { get set }
}

class MenuItem: MenuItemProtocol {
    let id = UUID()
    var price: Double = 0.0
    let title: String
    let category: MenuCategory
    var ordersCount: Int = 0
    var newPrice: Int = 0
    var ingredients: [Ingredient]

    init(title: String, category: MenuCategory, ingredients: [Ingredient]) {
        self.title = title
        self.category = category
        self.ingredients = ingredients
        ordersCount = randomOrdersCount
        newPrice = Int(randomPrice)
        price = randomPrice
    }

    private var randomPrice: Double {
        Double.random(in: 3.99 ... 15.99)
    }

    private var randomOrdersCount: Int {
        Int.random(in: 100 ... 1000000)
    }

    static let sample = MenuItem(title: "Sample Item", category: .food, ingredients: Ingredient.randomIngredients)
}

struct MenuSection: Identifiable {
    let id = UUID()
    let title: String
    let items: [MenuItem]
}

@MainActor
class MenuViewViewModel: ObservableObject {
    @Published var menu: [MenuSection] = []

    init() {
        let menuData = [
            MenuSection(title: "Food", items: foodMockData),
            MenuSection(title: "Drinks", items: drinksMockData),
            MenuSection(title: "Dessert", items: dessertMockData),
        ]
        menu = menuData
    }
}

fileprivate let foodMockData = (1 ... 12).map { MenuItem(title: "Food \($0)", category: .food, ingredients: Ingredient.randomIngredients) }
fileprivate let drinksMockData = (1 ... 8).map { MenuItem(title: "Drink \($0)", category: .drink, ingredients: Ingredient.randomIngredients) }
fileprivate let dessertMockData = (1 ... 4).map { MenuItem(title: "Dessert \($0)", category: .dessert, ingredients: Ingredient.randomIngredients) }
