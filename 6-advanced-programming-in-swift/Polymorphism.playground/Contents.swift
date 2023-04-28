import UIKit

// MARK: - Polymorphism

class Spagetti {
    var ingredients: Set<String> = [
        "pasta",
        "tomato sauce",
    ]

    func fetchIngredients() {
        print("Ingredients: \(ingredients)")
    }
}

// 'final' means no other class can inherit
final class SpagettiMeatball: Spagetti {
    override func fetchIngredients() {
        print("Before")
        super.fetchIngredients()
        print("After")
        print("Special spagetti meatball ingredients")
    }
}

let spagetti = Spagetti()
let spagettiMeatball = SpagettiMeatball()

print(spagetti.fetchIngredients())
print(spagettiMeatball.fetchIngredients())
