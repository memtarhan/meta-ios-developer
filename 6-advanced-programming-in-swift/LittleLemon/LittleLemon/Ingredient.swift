//
//  Ingredient.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 04/06/2023.
//

import Foundation

enum Ingredient: String, CaseIterable {
    case spinach
    case broccoli
    case carrot
    case pasta
    case tomatoSauce

    static var randomIngredients: [Ingredient] {
        let allIngredients = Ingredient.allCases
        var ingredients: Set<Ingredient> = []
        (0 ..< 3).forEach { _ in
            let randomized = Int.random(in: 0 ..< allIngredients.count)
            ingredients.insert(allIngredients[randomized])
        }

        return Array(ingredients)
    }
}
