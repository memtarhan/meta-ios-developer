import UIKit

// enum PastaTypes: Int {
//  case spaghetti
//  case penne
//  case ravioli
//  case rigatoni
// }

/*
 Next, let’s assign raw values to indicate the cooking time required for each type of pasta.
 This will allow the person cooking the pasta to know the exact time in minutes when the pasta
 is "Al Dente"(cooked just enough to keep its texture). First, the type is specified in the enum
 signature as type Int. Then, each case is assigned a unique value using the assignment
 operator. Remember that each of the raw values associated with the enum case must be unique.
 */

enum PastaTypes: Int, CaseIterable {
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}

let cookingTime = PastaTypes.spaghetti.rawValue
print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")

/*
 You can also create a function called cookingPerfectPasta and pass the enum as the argument.
 The function will print the type of pasta and cooking time associated with the exact PastaType
 case. This will help you test other enum cases.
 */
func cookingPerfectPasta(pasta: PastaTypes) {
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}

cookingPerfectPasta(pasta: .rigatoni)

let totalCaseCount = PastaTypes.allCases.count
print(totalCaseCount)

// MARK: - Enums with associated values

enum PastaTypesA {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case fusilli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)

func checkIfCooked(for pasta: PastaTypesA) {
    switch pasta {
    case let .spaghetti(cookingTime):
        if cookingTime < 8 {
            print("Spaghetti is still not fully cooked...")
        } else {
            print("Spaghetti is cooked, take it out of the water!")
        }

    default: return
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))

func checkIfCooked2(for pasta: PastaTypesA) {
  switch pasta {
  case .spaghetti(let cookingTime) where cookingTime >= 8:
    print("Spaghetti is cooked, take it out of the water!")
  default: print("Pasta is not cooked.")
  }
}
checkIfCooked2(for: .spaghetti(cookingTime: 7))

enum Ingredient: String {
    case lettuce = "Romain Lettuce"
    case croutons = "Salted Croutons"
    case chicken = "Free Range Chicken"
}

print("This is the ingredient enumeration value: \(Ingredient.lettuce)")

enum IngredientA {
    case lettuce(localizedName: String) 
}

let ingredient = IngredientA.lettuce(localizedName: "Marul")
print(ingredient)
